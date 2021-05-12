function [] = draw(task)

if(task==1)
%Compute
%a) (2+3)*(4+5)
%b) the square root of 2
%c) the dot product of vectors [1 2 3 ... 100] and [2 5 8 ... 299].
%HINT: sqrt, sum, [a:n:b]
disp(['--------------------------------------------------------------------------------']);
disp(['Exercise ',num2str(task),':']);
%Add your command lines for exercise 1 below.
 disp("a/")
a= (2+3)*(4+5);
disp(a);
disp("b/")
syms b;
equa=b^2==2;
solb=solve(equa,b);
disp(solb);
disp("c/")
c1=1:1:100;
c2=2:3:299;
c3=dot(c1,c2);
disp(c3);
 

elseif(task==2)
%Produce a graph of a function of your choice
%(a sinusoidal function in the interval [0,2*pi] for example)
%HINT: linspace , sin, figure, plot
disp(['Exercise ',num2str(task),':']);
%Add your command lines for exercise 2 below.
figure(123);
x=linspace(0,2*pi,100);
y=sin (x);
plot(x,y,'--rs');
hold on
 
 
elseif(task==3)%JOJ
%Produce another figure including graphs of
%a straight line with slope 1 passing through point (x,y)=(0,-2)
%and a rightwards opening parabola (the root function).
%What are the interception points of those graphs?
%HINT: linspace , figure, clf, hold, plot, grid, axis

disp(['Exercise ',num2str(task),':']);
%Add your command lines for exercise 3 below.
 figure(456);
x=linspace(-10,10,500);
y=x-2;
plot(x,y,"r");
grid on;
axis on;
hold on;
%Draw rightwards opening parabola
a=0:0.1:10;
b1=sqrt(a)+2;
b2=-sqrt(a)+2;
plot(a,b1,"b");
plot(a,b2,"b");
axis([2 7 0 5]);
axis equal;
disp('the interception points of those graphs are (6.6; 4.569) and (2.4; 0.4508)');
 
 
elseif(task==4)%JOJ
%Solve the system of equations:
% x+2y+3z+4w=5%JOJ
%2x+3y+4z+5w=6%JOJ
%3x-4y-5z-6w=7%JOJ
%5x-4y+3z-2w=1%JOJ
%HINT: [,,;,,]', \, inv%JOJ
disp(['Exercise ',num2str(task),':']);
%Add your command lines for exercise 4 below.
A=[1, 2, 3, 4; 2, 3, 4, 5; 3, -4, -5, -6; 5, -4, 3, -2]
B=[5 ;6; 7; 1]
Y=inv(A);
X=Y*B;
disp('The solution of systems equation: ');

disp(X);
 
 
elseif(task==5)
%Compare the speeds of matrix inversion routines 'inv' and '/' (slash).
%Test matrices of different sizes.
%You may want to draw a figure of the timing data.
%Which do you consider faster?
%HINT: zeros, for, rand, tic, toc, plot
disp(['Exercise ',num2str(task),':']);
%Add your command lines for exercise 5 below.
t=zeros(1,200);
r=zeros(1,200);
for n=1:200
   A = rand(n);
   tic;
   B=inv(A);
   t(n)=toc;
   tic;
   C = eye(n) / A;
   r(n)=toc;
end
figure(1);
plot(t,"r");
hold on
plot(r,"b");
disp('I think the routine inv  is faster  ');
%     A=rand(50);
%     tic;
%     B=inv(A);
%     inverse=toc;
%     tic;
%     C=eye(50)/A;
%     slash=toc;
%     disp(inverse)
%     disp(slash)
 
elseif(task==6)%JOJ
%Integrate sin(x/2)/x with respect to x from 0 to 1.%JOJ
%HINT: sum%JOJ
disp(['--------------------------------------------------------------------------------']);%JOJ
disp(['Exercise ',num2str(task),':']);%JOJ
%Add your command lines for exercise 6 below.%JOJ
syms x;
f=sin(x/2)/x;
q = int(f,[0 1]);
disp(double(q))



 
elseif(task==7)%JOJ
%Calculate the derivative function of sin(x/2)/x with respect to x%JOJ
%in the interval from 0 to 1
%JOJ
%HINT: diff%JOJ
disp(['--------------------------------------------------------------------------------']);%JOJ
disp(['Exercise ',num2str(task),':']);%JOJ
%Add your command lines for exercise 7 below.%JOJ
 syms f(x)
f(x) = sin(x/2)/x;
df = diff(f,x);
y=0.00001:0.05:1;
disp(double(df(y)));
 
 
elseif(task==8)%JOJ
%Find all triplets (a,b,c) of integers between 0 and 100%JOJ
%such that a*a + b*b = c*c.%JOJ
%HINT: for(),end%JOJ
disp(['--------------------------------------------------------------------------------']);%JOJ
disp(['Exercise ',num2str(task),':']);%JOJ
%Add your command lines for exercise 8 below.%JOJ
 for a = 1:100
    for b = 1:100
        c=sqrt(a^2+b^2);
        if c==round(c)
            if c<=100
                disp(a);
                disp(b);
                disp(c);
                disp('-------------------');
            end
        end
        
    end
end

 
 
elseif(task==9)%JOJ
%Solve a numerical approximation for y(x) in%JOJ
%y'(x)+2*y(x)=6, y(0)=7.%JOJ
%Note: you may write a procedure here or use Simulink, for example.%JOJ
%HINT: Simulink, Euler, Runge-Kutta,%JOJ
%      y(x)=4*exp(-2*x)+3 (for comparison, if you will)%JOJ
disp(['--------------------------------------------------------------------------------']);%JOJ
disp(['Exercise ',num2str(task),':']);%JOJ
%Add your command lines for exercise 9 below.%JOJ
 a=linspace(0,10,200);
b=4*exp(-2*a)+3;
figure(123);
clf;
hold on;


plot(a,b, 'go');
grid on;
xlabel('x');
ylabel('f(x)');

x0=0;
y0=7;






N=ceil(abs(xend-x0)/0.02);
dx=(xend-x0)/N;
x=x0;
y=y0;
k1= 6-2*y;
for(n=1:N)
    x=x+dx;
    y=y+k1*dx;
    k1=6-2*y;
    fprintf('x= %s',double(x));
    fprintf('y= %s',double(y));
    disp('------------------');
    plot(x,y,'b.-');


end
legend({'y = 4*exp(-2*x)+3','y = f(x)'},'Location','southwest')
 
 
elseif(task==10)%JOJ
%Come up with an idea of your own.%JOJ
disp(['--------------------------------------------------------------------------------']);%JOJ
disp(['Exercise ',num2str(task),':']);%JOJ
%Add your command lines for exercise 10 below.%JOJ
 x=linspace(-10,10,10);
y=x+2;
figure(2);
plot(x,y)
 
 
elseif(task==11)%JOJ
%Give feedback on the course.%JOJ
%HINT: Use commenting or disp, for example.%JOJ
disp(['--------------------------------------------------------------------------------']);%JOJ
disp(['Exercise ',num2str(task),':']);%JOJ
%Add your command lines for exercise 11 below.%JOJ
disp('Everything is good!')


end%JOJ
%For task 9...%JOJ
%The soln for f'(x)+a*f(x)=b, f(0)=A is%JOJ
%f(x)=(A-b/a)*exp(-a*x)+b/a.%JOJ
end%exam_2018%JOJ