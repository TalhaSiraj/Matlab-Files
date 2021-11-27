clc
clear all
close all

error=100;
xl=input('Enter the starting point of the interval: ')
xh=input('Enter the ending point of the interval: ')
tol=input('Enter Tolerence')
f=inline('(667.38/x)*(1-exp(-x/68.1*10))-40')

i=0;

while(error>tol)
disp('------------------------')
i=i+1
xl
xh
xr = (xl + xh)/2
fxr=f(xr)

if f(xl)*f(xr)<f(xh)*f(xr)
    xh=xr;
else   
    xl=xr;
end

if (i>1)
error=abs((xr-temp)/xr);
end

temp=xr;

end


