%% EASP - Project 2018Z
% Implementation and Study of different algorithms used for telecommunication receivers
%
% Guillermo Pajares Martín
% K-5123
% EiTI - PW

clear;

%% System parameters

%Transmitter parameters
M = 16; %Bits per symbol
k = log2(M); %Coding levels
N = 10000; %Number of random generated bits

%Channel parameters
channel_SNR = 30; %Channel SNR for the addition of the White Noise
h = [1, 0.3]';%Channel coefficients (is supposed as a FIR filter)

%Receiver parameters
Alg = 'RLS'; %Algorithm to apply in the study ('NO', 'LMS' or 'RLS')
L = 2;
alpha = 0.01;
lambda = 0.8;
gamma = 150;


%% Transmitter

%Training sequence load
load('training_seq.mat')
T = length(training_seq);

%Random Bit Generator
x = randi([0 1],N,1);
figure(1);
stem(x(1:50));
title('First 50 Samples of the Random Generated Bits');

%Symbol generator
x_sym = bi2de(reshape(x,N/k,k));
figure(2);
stem(x_sym(1:20));
title('First 20 Samples of the Random Generated Symbols');

%QAM Modulation
y = qammod(x_sym,M,'bin');
y = [training_seq.', y.'];
y = y.';
figure(3); %Transmited constellation
plot(y,'*','LineWidth',3);
title('Transmited constellation');

figure(15);
plot(y(1:T),'*');
title('Transmited Training constellation');

%% Channel

q = filter(h, 1, y); 
%q = q/(sqrt(sum(h.^2)));
x2 = awgn(q,channel_SNR);
% x2 = q;
%% Receiver

%Constellations of the received signal in the antenna
f = figure(4);
plot(x2(1:T),'.');
hold on;
plot(y,'*');
title('Constellation of the received training sequence');
hold off;

figure(5);
plot(x2,'.');
hold on;
plot(y,'*');
title('Full x(n) Constellation');
hold off;

%Adaptative Algorithms
if (strcmp(Alg,'LMS')) == 1
    
    [e, out, ff] = lms(x2(1:T), decision(x2), L, alpha);
    y2 = conv(x2,ff(:,end));
    
    figure(6);
    plot(abs(e));
    title('|e(n)| of LMS Algorithm');
    
    figure(7);   
    plot(y2,'.');
    hold on;
    plot(y,'*');
    title('Constellation after LMS filtering');
    hold off;
    
    figure(10);   
    plot(y2(1:T),'.');
    hold on;
    plot(y,'*');
    title('Constellation of Training Seq after LMS filtering');
    hold off;
    
    figure(14);
    plot(abs(ff.'));
    title('LMS Filter coefficients');
        
elseif (strcmp(Alg,'RLS')) == 1
    
    [e, out, ff] = rls(x2(1:T), decision(x2), L, lambda, gamma);
    y2 = conv(x2,ff(:,end));
    
    figure(6);
    plot(abs(e));
    title('|e(n)| of RLS Algorithm');
    
    figure(7);   
    plot(y2,'.');
    hold on;
    plot(y,'*');
    title('Constellation after RLS filtering');
    hold off;
    
    figure(10);   
    plot(y2(1:T),'.');
    hold on;
    plot(y,'*');
    title('Constellation of Training Seq after RLS filtering');
    hold off;
    
    figure(14);
    plot(abs(ff.'));
    title('RLS Filter coefficients');
    
else
    
     y2 = x2;
    
end

delay = abs(length(x2)-length(y2));
y2 = y2(1:end-delay);

%QAM demodulation
% a2 = decision(y2);
e2_sym = qamdemod(y2,M,'bin');

figure(8);
stem(e2_sym(1:20));
title('First 20 Samples of the Received Symbols (without training sequence)');

%Decodification
e2 = de2bi(e2_sym(T+1:end),k);
e2 = e2(:);
figure(9);
stem(e2(1:50));
title('First 50 Samples of the Received Bits (without training sequence)');

%Measurements
[number,ratio] = biterr(x,e2); %BER
evm = EVM(e2); %EVM

% %Data print
fprintf('\n---\n\n')
x_print = sprintf('%d ', x(1:20));
fprintf('20 First Sent bits: %s\n', x_print)
e_print = sprintf('%d ', e2(1:20));
fprintf('20 first Received bits: %s\n', e_print)
disp(' ');
number_print = sprintf('%d ', number);
fprintf('Number of bit errors: %s\n', number_print)
ratio_print = sprintf('%d ', ratio);
fprintf('BER = %s\n', ratio_print)
evm_print = sprintf('%d ', evm);
fprintf('EVM = %s\n', evm_print)
