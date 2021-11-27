clc
clear all
close all

error=1000;
xl=input('Enter the starting point of the interval: ')
xh=input('Enter the ending point of the interval: ')
tol=input('Enter Tol ')
f=inline('0.99403+1.671e-4*T+9.7215e-8*T^2-9.5838e-11*T^3+1.9520e-14*T^4-1.1')
% f=inline('(667.38/x)*(1-exp(-x/68.1*10))-40')
% f=inline('x^10-1')
i=0

while(error>tol)
    disp('------------------------')
    i=i+1
    xl
    xh
    xr=(xl*f(xh)-xh*f(xl))/(f(xh)-f(xl))
    fxr=f(xr)

    if f(xl)*f(xr)<f(xh)*f(xr)
        xh=xr;
    else   
        xl=xr;
    end
    
    if(i>1)
       error=abs((xr-temp)/xr) 
    end
    temp=xr;
end