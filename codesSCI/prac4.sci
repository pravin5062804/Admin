 //write a scilab function to find 1st derivative for following data
//using forward

function [yest]=Newtonforward(x,y,xest)
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
    p=(xest-x(1))/h
    disp('p='+string(p))
    e(1)=p
    for j=2:n-1
        e(j)=e(j-1)*(p+1-j)/j
    end
    yest=0
    for i=1:n-1
        yest=yest+e(i)*d(1,i)
    end
    yest=yest+y(1)
    printf("estimate value of y : %g when value of x = %g",yest,xest)
endfunction

x=[75,80,85,90]
y=[246,202,118,40]
xest=79
Newtonforward(x,y,xest)


//write a scilab function to find 1st derivative for following  data
//using backward


