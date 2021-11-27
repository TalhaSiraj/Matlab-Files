function gz_error_bisection

f=inline('3*x+sin(x)-exp(x)');
x1=input('enter starting point of the interval  ')
fx1=f(x1)
x2=input('enter ending point of the interval  ')
fx2=f(x2)
error=0.05;
while(error>=0.05)
    disp('---------------------------------------------------------------------')
    x3=(x1+x2)/2;
    f(x1);
    f(x3);
    error=abs((x1-x2)/2);
    if f(x1)*f(x3)<0
        x2=x3;
    else
        x1=x3;
    end
    root=x3
    fr=f(x3)
    error
end    
    
    
        
        