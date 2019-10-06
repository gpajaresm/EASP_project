function [result] = EVM(x)

K = length(x);
result = 0;

for i = 1:K
    a = (abs(x(i) - decision(x(i))))/K;
    result = result + a;
end

end

