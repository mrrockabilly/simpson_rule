%
% This code uses the composite Simpson rule to calculate
% int_{a}^{b} f(x) dx.
% The error is calculated using the exact solution.
%
a=0; b=2;
%
figure;
hold on

N=256;
h=(b-a)/N;

for s=0:.001:4
x=a+[0:N]*h;
y=f(x,s);
x2=a+[0:N-1]*h+h/2;
y2=f(x2,s);
T=(y(1)+y(N+1)+2*sum(y(2:N))+4*sum(y2))*h/6;
plot (s,T)
hold on
end

xlabel('s')
ylabel('g(s)')
title('g(s) = int_{0}^{2} (sqrt(1+exp(-3*cos(s*x)))-1.5) dx')