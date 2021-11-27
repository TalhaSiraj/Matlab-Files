function gz_bisection

f=inline('3*x+sin(x)-exp(x)');
x1=input('enter starting point of the interval  ')
fx1=f(x1)
x2=input('enter ending point of the interval  ')
fx2=f(x2)
for n=1:8
    disp('---------------------------------------------------------------------')
    x3=(x1+x2)/2;
    f(x1);
    f(x3);
    if f(x1)*f(x3)<0
        x2=x3;
    else
        x1=x3;
    end
    format long
    root=x3
    fr=f(x3)
end    
    
        
        