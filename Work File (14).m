clc
clear all
close all

f=inline('pi*sin(pi*x)')
SL=input('Enter Starting Limit: ');
EL=input('Enter Ending Limit: ');


%% Composite Trapezoidal
h=input('Enter Change in x: ');
sum=0;
x=SL:h:EL;

for i=1:length(x)-2
   sum=2*f(x(i+1))+sum;    
end
Out=(h/2)*(f(SL)+sum+f(EL))

%% 3/8 Simpson's Rule 
h=input('Enter Change in x: ');
Out= ((3*h)/8)*(f(SL)+3*f(SL+h)+3*f(SL+2*h)+3*f(EL))

%% Simpson's Rule
h=input('Enter Change in x: ');
Out= (h/3)*(f(SL)+4*f(SL+h)+f(EL))

%% Trapezoidal Rule
h=input('Enter Change in x: ');
Out= (h/2)*(f(SL)+f(EL))

%% actual
x=sym('x')
y='pi*sin(pi*x)';
int(y,x,[2.5 3])
