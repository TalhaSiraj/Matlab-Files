clc
clear all
close all
format long
x=input('Enter x: ');
y=input('Enter y: ');
z=input('Enter z: ');
n=input('Enter Iterations: ');

for i=1:n
    
   x=(3-y+z)/4;
   y=(19-2*x-z)/7;
   z=(31-x+3*y)/12;
   disp('________________________________')
   i
   x
   y
   z     
    
end
