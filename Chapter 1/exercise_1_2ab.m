function c = exercise_1_2a(k, xbar, x)
n = length(x);
rhs = zeros(n,1);
rhs(k+1) = 1;
lhs = zeros(n,n);
for i = 1:n
    lhs(i,:) = (1/factorial(i-1))*(x(:) - xbar).^(i-1);
end
c = lhs\rhs;
c = c';
