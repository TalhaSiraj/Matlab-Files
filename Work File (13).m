clc
clear all
close all

f='(667.38/x)*(1-exp(-x/68.1*10))-40'
x=sym('x');
fdt=diff(f,x)
n=input('Enter Iterations: ')
xo=input('Enter xo ')

for i=1:n
    disp('---------------------------------------------------------------------')
    i   
    xo;
    x=xo;
    fxo=eval(f);
    fdxo=eval(fdt);
    xo=xo-(fxo/fdxo)
    
end
