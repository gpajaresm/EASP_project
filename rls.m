function [e, y, ff] = rls(x, d, L, lambda, gamma)

    N = length(x);

    e = zeros(1,N);
    y = zeros(1,N);                   
    ff = zeros(L,N);   

    f_n=zeros(L,1);
    x_n=zeros(L,1);

    P = gamma*eye(L);

    for n = 1:N

        x_n = [x(n); x_n(1:end-1,1)];

        y(n) =f_n'*x_n;
        e(n) = d(n)-y(n);
        alpha = P*x_n / (lambda+(x_n'*P*x_n));
        f_n = f_n + alpha*conj(e(n));
        P = (P - (alpha*x_n'*P))/lambda;
        

        ff(:,n) = f_n;

    end
    


end