clc
clear all
close all

f=inline('log(x)')
% f=inline('-0.1*x^4-0.15*x^3-0.5*x^2-0.25*x+1.2')
h=input('Enter Change in x: ');
x=input('Enter x: ');

%% two point formula
TPF=(f(x+h)-f(x))/h


%% three point forward difference
TPFD=(1/(2*h))*(-3*f(x)+4*f(x+h)-f(x+2*h))


%% three point backward difference
TPBD=(1/(2*h))*(3*f(x)-4*f(x-h)+f(x-2*h))


%% three point central difference
TPCD=(1/(2*h))*(f(x+h)-f(x-h))


%% Five Point Central Difference
FPCD=(1/(12*h))*(f(x-2*h)-8*f(x-h)+8*f(x+h)-f(x+2*h))


%% Actual
x=sym('x')
y='log(x)';
yd=diff(y,x)
x=input('Enter x: ')
Actual=eval(yd)

