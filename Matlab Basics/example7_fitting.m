function [] = example7_fitting (fig)

N=10^3;%size of data
[xD,yD]=data(N);%constructing the data
[xM,yM]=fitting(xD,yD);%constructing the optimal model

visualize(fig,xD,yD,xM,yM);

end

function [x,y] = fitting (x0,y0)

N=length(x0);
n=1;%polynomial degree to be fitted
[A,B]=constructmatrices(x0,y0,n);
P=A\B;
x=x0;
y=datafit(x0,P);

end

function [y] = datafit (x,P)

y=zeros(size(x));
for(k=1:length(P))
    y=y+P(k)*x.^(k-1);
end

end

function [A,B] = constructmatrices(x0,y0,n)

A=zeros([n+1 n+1]);
B=zeros([n+1 1]);
for(u=1:n+1)
    B(u,1)=sum(x0.^(u-1).*y0);
    for(v=1:n+1)%matrix A row
        A(u,v)=sum(x0.^((v-1)+(u-1)));
    end
end

end


function [x,y] = data (N)

x=linspace(2,7,N);
y=datamodel(x);
%adding noise
strd=0.1;
mu=0;
x=x+(strd*randn([1 N])+mu);
y=y+(strd*randn([1 N])+mu);

end

function [y] = datamodel (x)

y=2*x-3;

end

function [] = visualize (fig,x0,y0,x,y)

figure(fig);
clf;
hold on;
plot(x0,y0,'b.');
plot(x,y,'r-');

end
