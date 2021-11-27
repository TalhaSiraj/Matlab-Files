clc
clear all
close all

A=input('Enter the Input Matrix')
B=input('Enter the Output Matrix')
c=[A B];

output=rref(c)

iteration=0;

for i=1:length(A)-1
    for j=i+1:length(A)
        disp('____________________________________________________');
        iteration=iteration+1
       constant=-c(j,i)/c(i,i)
        c(j,:)=c(j,:)+constant*c(i,:)          
    end
end


for i=length(A):-1:2
    for j=i-1:-1:1
        disp('____________________________________________________');
        iteration=iteration+1
        constant=-c(j,i)/c(i,i)
        c(j,:)=c(j,:)+constant*c(i,:)      
    end
end

for k=1:length(A)
    Out(k)=c(k,end)/c(k,k) ;
end



