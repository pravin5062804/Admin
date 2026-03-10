function [dyest]=Newtonforward(x,y,xest)
    n=length(y)
    disp('length(n) is '+string(n))
    d(:,1)=y'
    for j=2:n+1
        for i=1:n+1-j
            d(i,j)=d(i+1,j-1)-d(i,j-1)
        end
    end
    d(:,1)=[]
    mprintf("%5s %7s %5s %5s %5s",'x','y','dy','d2y','d3y')
    disp("")
    disp([x',y',d])
    h=x(2)-x(1)
    disp("Step size is" + string(h))
    dyest=d(1,1)
    t=2
    for i=2:n-1
        if modulo(i,2)==1 then 
            dyest=dyest+((1/t)*d(1,i))
        else
            dyest =dyest - ((1/t)*d(1,i))
            
    end
        t=t+1
    end
    dyest=(1/h)*(dyest)
    printf('estimated value of y=%g when value of x=%g \n',dyest,xest)
endfunction

x=[0.4,0.6,0.8,1.0,1.2]
y=[1.0811,1.1855,1.3374,1.5431,1.8107]
xest=0.4
Newtonforward(x,y,xest)
