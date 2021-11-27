clc
clear all
close all

f=inline('-2*y+x+4','x','y')
h=input('Enter Change in x: ');
Val=input('Enter the x on function is to be calculated: ')
xo=input('Enter Initial point x: ');
yo=input('Enter Y at Initial point x: ');
x=xo;
y=yo;
count=xo:h:Val;
for i=1:length(count)-1
    k1=h*f(x(i),y(i));
    k2=h*f(x(i)+((1/2)*h),y(i)+(1/2)*k1);
    k3=h*f(x(i)+((1/2)*h),y(i)+(1/2)*k2);
    k4=h*f(x(i)+h,y(i)+k3);
    y(i+1)=y(i)+(1/6)*(k1+2*k2+2*k3+k4);
    x(i+1)=x(i)+h;
end
x
y

