//Newton Forward

function [yest]=newtonforword(xest,x,y)

n=length(y);
disp("length is:"+string(n));

d(:,1)=y';

for j=2:n+1
    for i=1:n+1-j
        d(i,j)=d(i+1,j-1)-d(i,j-1);
    end
end

d(:,1)=[];

mprintf("%5s %5s %5s %5s %5s","x","y","dy0","d2y0","d3y0");
disp("")
disp([x' y' d]);

h=x(2)-x(1);
disp("stepsize is:"+string(h));

p=(xest-x(1))/h;
disp("p="+string(p));

e(1)=p;

for j=2:n-1
    e(j)=e(j-1)*(p-(j-1))/j;
end
yest=0;
for i=1:n-1
   yest=yest+e(i)*d(1,i);
end

yest=yest+y(1);
disp("y at x=79:"+string(yest));

endfunction

x=[75,80,85,90];
y=[246,202,118,40];

xest=79;

newtonforword(xest,x,y);
