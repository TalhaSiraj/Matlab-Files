clc
clear all
close all

xl=input('Enter Starting Point ')
xh=input('Enter Ending Point ')
n=input('Enter Iterations ')
% f=inline('(667.38/x)*(1-exp(-x/68.1*10))-40')
f=inline('x^10-1')


for i=1:n
    disp('................................................................')
    i
    xl
    xh
    xr=(xl*f(xh)-xh*f(xl))/(f(xh)-f(xl))
    f(xr)
    
    if(i==1)
        if (f(xl)*f(xr)) < (f(xh)*f(xr))
            xh=xr;
            xpr=xr;
        else 
            xl=xr;
            xpr=xr;
        end
    else if(i==2)
            xl=xpr;
            xh=xr;
        else
            xl=xh;
            xh=xr;
        end
    end
    
    
end








