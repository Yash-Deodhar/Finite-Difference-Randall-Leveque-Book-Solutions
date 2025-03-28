format longg
digits(30)
hvals = logspace(-1,-4, 13);
xbar = 1;
c = [-1/12, 4/3, -2.5, 4/3, -1/12];
u = [sin(2*(xbar - 2*hvals(:))), sin(2*(xbar - hvals(:))), sin(2*(xbar - 0*hvals(:))), sin(2*(xbar + hvals(:))), sin(2*(xbar + 2*hvals(:)))];
approx = zeros(13,1);
for i=1:13
    u(i,:) = u(i,:)*(1/hvals(i)^2);
    approx(i) = sum(u(i,:).*c);
end
actual = -4*sin(2)
approx'
error = actual - approx
expected_error = -0.0111111 .* hvals.^4 .* sin(2) .* 16;
expected_error'
loglog(hvals,abs(error),'o-')
