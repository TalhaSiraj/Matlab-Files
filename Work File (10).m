clc
clear all
close all

x=input('Enter x: ');
y=input('Enter y: ');
z=input('Enter z: ');
n=input('Enter Iterations: ');

for i=1:n
    
   x(i+1)=(3-y(i)+z(i))/4;
   y(i+1)=(19-2*x(i)-z(i))/7;
   z(i+1)=(31-x(i)+3*y(i))/12;
        
    
end
x
y
z