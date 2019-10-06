function [z] = decision(x)

A = -1 +1i;
B = 1 + 1i;
C = 1 - 1i;
D = -1-1i;
E = -3+3i;
F = -1+3i;
G = 1+3i;
H = 3+3i;
I = 3+1i;
J = 3-1i;
K = 3-3i;
L = 1-3i;
M = -1-3i;
Q = -3-3i;
O = -3-1i;
P = -3+1i;

N = length(x);
z = zeros(1,N);

for i=1:N

        if((abs(x(i)-A)<abs(x(i)-B)) & (abs(x(i)-A)<abs(x(i)-C)) & (abs(x(i)-A)<abs(x(i)-D)) & (abs(x(i)-A)<abs(x(i)-E)) & (abs(x(i)-A)<abs(x(i)-F))& (abs(x(i)-A)<abs(x(i)-G)) & (abs(x(i)-A)<abs(x(i)-H)) & (abs(x(i)-A)<abs(x(i)-I)) & (abs(x(i)-A)<abs(x(i)-J)) & (abs(x(i)-A)<abs(x(i)-K)) & (abs(x(i)-A)<abs(x(i)-L))& (abs(x(i)-A)<abs(x(i)-M)) & (abs(x(i)-A)<abs(x(i)-Q)) & (abs(x(i)-A)<abs(x(i)-O)) & (abs(x(i)-A)<abs(x(i)-P))  )

            z(i) = A;

        elseif((abs(x(i)-B)<abs(x(i)-A)) & (abs(x(i)-B)<abs(x(i)-C)) & (abs(x(i)-B)<abs(x(i)-D)) & (abs(x(i)-B)<abs(x(i)-E)) & (abs(x(i)-B)<abs(x(i)-F))& (abs(x(i)-B)<abs(x(i)-G)) & (abs(x(i)-B)<abs(x(i)-H)) & (abs(x(i)-B)<abs(x(i)-I)) & (abs(x(i)-B)<abs(x(i)-J)) & (abs(x(i)-B)<abs(x(i)-K)) & (abs(x(i)-B)<abs(x(i)-L))& (abs(x(i)-B)<abs(x(i)-M)) & (abs(x(i)-B)<abs(x(i)-Q)) & (abs(x(i)-B)<abs(x(i)-O)) & (abs(x(i)-B)<abs(x(i)-P)) )

            z(i) = B;    

        elseif((abs(x(i)-C)<abs(x(i)-A)) & (abs(x(i)-C)<abs(x(i)-B)) & (abs(x(i)-C)<abs(x(i)-D)) & (abs(x(i)-C)<abs(x(i)-E)) & (abs(x(i)-C)<abs(x(i)-F))& (abs(x(i)-C)<abs(x(i)-G)) & (abs(x(i)-C)<abs(x(i)-H)) & (abs(x(i)-C)<abs(x(i)-I)) & (abs(x(i)-C)<abs(x(i)-J)) & (abs(x(i)-C)<abs(x(i)-K)) & (abs(x(i)-C)<abs(x(i)-L))& (abs(x(i)-C)<abs(x(i)-M)) & (abs(x(i)-C)<abs(x(i)-Q)) & (abs(x(i)-C)<abs(x(i)-O)) & (abs(x(i)-C)<abs(x(i)-P)) )

            z(i) = C;    

        elseif((abs(x(i)-D)<abs(x(i)-A)) & (abs(x(i)-D)<abs(x(i)-B)) & (abs(x(i)-D)<abs(x(i)-C)) & (abs(x(i)-D)<abs(x(i)-E)) & (abs(x(i)-D)<abs(x(i)-F))& (abs(x(i)-D)<abs(x(i)-G)) & (abs(x(i)-D)<abs(x(i)-H)) & (abs(x(i)-D)<abs(x(i)-I)) & (abs(x(i)-D)<abs(x(i)-J)) & (abs(x(i)-D)<abs(x(i)-K)) & (abs(x(i)-D)<abs(x(i)-L))& (abs(x(i)-D)<abs(x(i)-M)) & (abs(x(i)-D)<abs(x(i)-Q)) & (abs(x(i)-D)<abs(x(i)-O)) & (abs(x(i)-D)<abs(x(i)-P)) )

            z(i) = D;
            
        elseif((abs(x(i)-E)<abs(x(i)-A)) & (abs(x(i)-E)<abs(x(i)-B)) & (abs(x(i)-E)<abs(x(i)-C)) & (abs(x(i)-E)<abs(x(i)-D)) & (abs(x(i)-E)<abs(x(i)-F))& (abs(x(i)-E)<abs(x(i)-G)) & (abs(x(i)-E)<abs(x(i)-H)) & (abs(x(i)-E)<abs(x(i)-I)) & (abs(x(i)-E)<abs(x(i)-J)) & (abs(x(i)-E)<abs(x(i)-K)) & (abs(x(i)-E)<abs(x(i)-L))& (abs(x(i)-E)<abs(x(i)-M)) & (abs(x(i)-E)<abs(x(i)-Q)) & (abs(x(i)-E)<abs(x(i)-O)) & (abs(x(i)-E)<abs(x(i)-P)) )

            z(i) = E;
            
        elseif((abs(x(i)-F)<abs(x(i)-A)) & (abs(x(i)-F)<abs(x(i)-B)) & (abs(x(i)-F)<abs(x(i)-C)) & (abs(x(i)-F)<abs(x(i)-D)) & (abs(x(i)-F)<abs(x(i)-E))& (abs(x(i)-F)<abs(x(i)-G)) & (abs(x(i)-F)<abs(x(i)-H)) & (abs(x(i)-F)<abs(x(i)-I)) & (abs(x(i)-F)<abs(x(i)-J)) & (abs(x(i)-F)<abs(x(i)-K)) & (abs(x(i)-F)<abs(x(i)-L))& (abs(x(i)-F)<abs(x(i)-M)) & (abs(x(i)-F)<abs(x(i)-Q)) & (abs(x(i)-F)<abs(x(i)-O)) & (abs(x(i)-F)<abs(x(i)-P)) )

            z(i) = F;
            
        elseif((abs(x(i)-G)<abs(x(i)-A)) & (abs(x(i)-G)<abs(x(i)-B)) & (abs(x(i)-G)<abs(x(i)-C)) & (abs(x(i)-G)<abs(x(i)-D)) & (abs(x(i)-G)<abs(x(i)-F))& (abs(x(i)-G)<abs(x(i)-E)) & (abs(x(i)-G)<abs(x(i)-H)) & (abs(x(i)-G)<abs(x(i)-I)) & (abs(x(i)-G)<abs(x(i)-J)) & (abs(x(i)-G)<abs(x(i)-K)) & (abs(x(i)-G)<abs(x(i)-L))& (abs(x(i)-G)<abs(x(i)-M)) & (abs(x(i)-G)<abs(x(i)-Q)) & (abs(x(i)-G)<abs(x(i)-O)) & (abs(x(i)-G)<abs(x(i)-P)) )

            z(i) = G;
            
        elseif((abs(x(i)-H)<abs(x(i)-A)) & (abs(x(i)-H)<abs(x(i)-B)) & (abs(x(i)-H)<abs(x(i)-C)) & (abs(x(i)-H)<abs(x(i)-D)) & (abs(x(i)-H)<abs(x(i)-F))& (abs(x(i)-H)<abs(x(i)-G)) & (abs(x(i)-H)<abs(x(i)-E)) & (abs(x(i)-H)<abs(x(i)-I)) & (abs(x(i)-H)<abs(x(i)-J)) & (abs(x(i)-H)<abs(x(i)-K)) & (abs(x(i)-H)<abs(x(i)-L))& (abs(x(i)-H)<abs(x(i)-M)) & (abs(x(i)-H)<abs(x(i)-Q)) & (abs(x(i)-H)<abs(x(i)-O)) & (abs(x(i)-H)<abs(x(i)-P)) )

            z(i) = H;
            
        elseif((abs(x(i)-I)<abs(x(i)-A)) & (abs(x(i)-I)<abs(x(i)-B)) & (abs(x(i)-I)<abs(x(i)-C)) & (abs(x(i)-I)<abs(x(i)-D)) & (abs(x(i)-I)<abs(x(i)-F))& (abs(x(i)-I)<abs(x(i)-G)) & (abs(x(i)-I)<abs(x(i)-E)) & (abs(x(i)-I)<abs(x(i)-H)) & (abs(x(i)-I)<abs(x(i)-J)) & (abs(x(i)-I)<abs(x(i)-K)) & (abs(x(i)-I)<abs(x(i)-L))& (abs(x(i)-I)<abs(x(i)-M)) & (abs(x(i)-I)<abs(x(i)-Q)) & (abs(x(i)-I)<abs(x(i)-O)) & (abs(x(i)-I)<abs(x(i)-P)) )

            z(i) = I;
            
        elseif((abs(x(i)-J)<abs(x(i)-A)) & (abs(x(i)-J)<abs(x(i)-B)) & (abs(x(i)-J)<abs(x(i)-C)) & (abs(x(i)-J)<abs(x(i)-D)) & (abs(x(i)-J)<abs(x(i)-F))& (abs(x(i)-J)<abs(x(i)-G)) & (abs(x(i)-J)<abs(x(i)-E)) & (abs(x(i)-J)<abs(x(i)-I)) & (abs(x(i)-J)<abs(x(i)-H)) & (abs(x(i)-J)<abs(x(i)-K)) & (abs(x(i)-J)<abs(x(i)-L))& (abs(x(i)-J)<abs(x(i)-M)) & (abs(x(i)-J)<abs(x(i)-Q)) & (abs(x(i)-J)<abs(x(i)-O)) & (abs(x(i)-J)<abs(x(i)-P)) )

            z(i) = J;
            
            elseif((abs(x(i)-K)<abs(x(i)-A)) & (abs(x(i)-K)<abs(x(i)-B)) & (abs(x(i)-K)<abs(x(i)-C)) & (abs(x(i)-K)<abs(x(i)-D)) & (abs(x(i)-K)<abs(x(i)-F))& (abs(x(i)-K)<abs(x(i)-G)) & (abs(x(i)-K)<abs(x(i)-E)) & (abs(x(i)-K)<abs(x(i)-I)) & (abs(x(i)-K)<abs(x(i)-J)) & (abs(x(i)-K)<abs(x(i)-H)) & (abs(x(i)-K)<abs(x(i)-L))& (abs(x(i)-K)<abs(x(i)-M)) & (abs(x(i)-K)<abs(x(i)-Q)) & (abs(x(i)-K)<abs(x(i)-O)) & (abs(x(i)-K)<abs(x(i)-P)) )

            z(i) = K;
            
            elseif((abs(x(i)-L)<abs(x(i)-A)) & (abs(x(i)-L)<abs(x(i)-B)) & (abs(x(i)-L)<abs(x(i)-C)) & (abs(x(i)-L)<abs(x(i)-D)) & (abs(x(i)-L)<abs(x(i)-F))& (abs(x(i)-L)<abs(x(i)-G)) & (abs(x(i)-L)<abs(x(i)-E)) & (abs(x(i)-L)<abs(x(i)-I)) & (abs(x(i)-L)<abs(x(i)-J)) & (abs(x(i)-L)<abs(x(i)-K)) & (abs(x(i)-L)<abs(x(i)-H))& (abs(x(i)-L)<abs(x(i)-M)) & (abs(x(i)-L)<abs(x(i)-Q)) & (abs(x(i)-L)<abs(x(i)-O)) & (abs(x(i)-L)<abs(x(i)-P)) )

            z(i) = L;
            
            elseif((abs(x(i)-M)<abs(x(i)-A)) & (abs(x(i)-M)<abs(x(i)-B)) & (abs(x(i)-M)<abs(x(i)-C)) & (abs(x(i)-M)<abs(x(i)-D)) & (abs(x(i)-M)<abs(x(i)-F))& (abs(x(i)-M)<abs(x(i)-G)) & (abs(x(i)-M)<abs(x(i)-E)) & (abs(x(i)-M)<abs(x(i)-I)) & (abs(x(i)-M)<abs(x(i)-J)) & (abs(x(i)-M)<abs(x(i)-K)) & (abs(x(i)-M)<abs(x(i)-L))& (abs(x(i)-M)<abs(x(i)-H)) & (abs(x(i)-M)<abs(x(i)-Q)) & (abs(x(i)-M)<abs(x(i)-O)) & (abs(x(i)-M)<abs(x(i)-P)) )

            z(i) = M;
            
            elseif((abs(x(i)-Q)<abs(x(i)-A)) & (abs(x(i)-Q)<abs(x(i)-B)) & (abs(x(i)-Q)<abs(x(i)-C)) & (abs(x(i)-Q)<abs(x(i)-D)) & (abs(x(i)-Q)<abs(x(i)-F))& (abs(x(i)-Q)<abs(x(i)-G)) & (abs(x(i)-Q)<abs(x(i)-E)) & (abs(x(i)-Q)<abs(x(i)-I)) & (abs(x(i)-Q)<abs(x(i)-J)) & (abs(x(i)-Q)<abs(x(i)-K)) & (abs(x(i)-Q)<abs(x(i)-L))& (abs(x(i)-Q)<abs(x(i)-M)) & (abs(x(i)-Q)<abs(x(i)-H)) & (abs(x(i)-Q)<abs(x(i)-O)) & (abs(x(i)-Q)<abs(x(i)-P)) )

            z(i) = Q;
            
            elseif((abs(x(i)-O)<abs(x(i)-A)) & (abs(x(i)-O)<abs(x(i)-B)) & (abs(x(i)-O)<abs(x(i)-C)) & (abs(x(i)-O)<abs(x(i)-D)) & (abs(x(i)-O)<abs(x(i)-F))& (abs(x(i)-O)<abs(x(i)-G)) & (abs(x(i)-O)<abs(x(i)-E)) & (abs(x(i)-O)<abs(x(i)-I)) & (abs(x(i)-O)<abs(x(i)-J)) & (abs(x(i)-O)<abs(x(i)-K)) & (abs(x(i)-O)<abs(x(i)-L))& (abs(x(i)-O)<abs(x(i)-M)) & (abs(x(i)-O)<abs(x(i)-Q)) & (abs(x(i)-O)<abs(x(i)-H)) & (abs(x(i)-O)<abs(x(i)-P)) )

            z(i) = O;
            
            elseif((abs(x(i)-P)<abs(x(i)-A)) & (abs(x(i)-P)<abs(x(i)-B)) & (abs(x(i)-P)<abs(x(i)-C)) & (abs(x(i)-P)<abs(x(i)-D)) & (abs(x(i)-P)<abs(x(i)-F))& (abs(x(i)-P)<abs(x(i)-G)) & (abs(x(i)-P)<abs(x(i)-E)) & (abs(x(i)-P)<abs(x(i)-I)) & (abs(x(i)-P)<abs(x(i)-J)) & (abs(x(i)-P)<abs(x(i)-K)) & (abs(x(i)-P)<abs(x(i)-L))& (abs(x(i)-P)<abs(x(i)-M)) & (abs(x(i)-P)<abs(x(i)-Q)) & (abs(x(i)-P)<abs(x(i)-O)) & (abs(x(i)-P)<abs(x(i)-H)) )

            z(i) = P;

        end
end  
        z = z.';
end

