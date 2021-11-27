function secant

f=inline('3*x+sin(x)-exp(x)');
x1=input('enter first point  ')
fx1=f(x1)
x2=input('enter second point ')
fx2=f(x2)
if abs(f(x2))>abs(f(x1))
    a=x1;
    x1=x2;
    x2=a;
end
error=0.001;
while(error>=0.001)
x3=x1-((f(x1)*(x1-x2))/(f(x1)-f(x2)));
disp('----------------------------------------------------------------------')
x1
x2
root=x3
fx3=f(x3);
x1=x2;
x2=x3
error=abs(f(x3))
end

    
        
       