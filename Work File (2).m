clc
clear all
close all

xl=input('Enter the starting point of the interval: ')
xh=input('Enter the ending point of the interval: ')
N=input('Enter No. of Iterations ')

% f=inline('exp(-x)*(3.2*sin(x)-0.5*cos(x))')
f=inline('(667.38/x)*(1-exp(-x/68.1*10))-40')
%f=inline('x^10-1')
% f=inline('sin(10*x)+cos(3*x)')

for i=1:N
 
    disp('------------------------')
    i
    xl
    xh
    xr = (xl + xh)/2
    fxr=f(xr)

    if f(xl)*f(xr)<f(xh)*f(xr)
        xh=xr;
    else   
        xl=xr;
    end

end