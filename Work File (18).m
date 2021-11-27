clc
clear all
close all

fdx=inline('-2*y+x+4','x','y')
h=input('Enter Change in x: ');
Val=input('Enter the x on function is to be calculated: ')
xo=input('Enter Initial point x: ');
yo=input('Enter Y at Initial point x: ');
x=xo;
y=yo;
count=xo:h:Val;
for i=1:length(count)-1
    y(i+1)=y(i)+h*fdx(x(i),y(i));
    x(i+1)=x(i)+h; 
end
x
y
