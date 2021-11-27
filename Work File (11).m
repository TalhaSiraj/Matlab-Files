clc
clear all
close all

x_i=[0 10 15 20 22.5 30];
y_i=[0 227.04 362.78 517.35 602.97 901.67];
n=input('Enter order of langrange polynomial: ');
ex=input('Enter point to on which function is to be estimated: ');
mul=1;
sum=0;
x=[ 10 15 20 22.5 30]
y=[227.04 362.78 517.35 602.97 901.67]

for j=1:n
    for k=1:n
        if (j==k)
            continue
        else
            mul=mul*((ex-x(k))/(x(j)-x(k))) ;  
        end
    end
    sum=sum+y(j)*mul;
    mul=1;
end
Output=sum
