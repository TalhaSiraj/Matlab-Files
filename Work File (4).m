clc
clear all
close all


xo=input('Enter xo ')
f='(x+10)^(1/4)'
x=sym('x')
fdx=diff(f,x)

x=xo
fdx0=eval(fdx)


f=inline('(x+10)^(1/4)');
n=input(' Enter Iterations ')

for i=1:n

    xo=f(xo)
    
end


a=inline('x^4-x-10')
a(xo)