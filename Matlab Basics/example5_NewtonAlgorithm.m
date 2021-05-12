function [] = example5_NewtonAlgorithm (fig)
%solving f(x)=0 for x by Newton's algorithm
%from initial geuss x0

%initial approximation arbitrarily chosen
x0 = 1 + 5*pi;

h = newton(x0);
h

%visualize(h, fig);

end

function [] = visualize(h, fig)

X = h(:,1);
F = h(:,2);
DF = h(:,3);

xmin = min(X);
xmax = max(X);
Dx = xmax - xmin;

k = 0.1;% extra space on the edges

x = linspace(xmin - k*Dx, xmax + k*Dx, 10^3);
[f, Df] = equationDefinition(x);

figure(fig);
clf;
hold on;
grid on;

plot(x, f, 'b-');
plot(x, F, 'ro-');


xlabel('x');
ylabel('f(x)');


end

function [history] = newton (x0)

[f0, Df0] = equationDefinition(x0);
x1 = x0 - f0/Df0; %Newton's step

[f1, Df1] = equationDefinition(x1);
history (1:2,:) = [x0,f0,Df0;x1,f1,Df1];


Nmax = 10;

ErrLim = 10^(-3);

%set the condition to run
n = 1;
err = computeError(x0, x1);

%loop
while(err > ErrLim && n <=Nmax)
    x0 = x1;
    f0 = f1;
    Df0 = Df1;
    x1 = x0 - f0/Df0;
    [f1, Df1] = equationDefinition(x1);
    
    err = computeError(x0, x1);
    n = n + 1;
    history (n + 1,:) = [x1,f1,Df1];
end

end

function [e] = computeError(x1, x0)
%end by the change in x
e = abs(x1 - x0);

%end by the change in y
%[f0, Df0] = equationDefinition(x0);
%e = abs(f)

end

function [f, Df] = equationDefinition (x)
f = exp(-x) - sin(x);
Df = -exp(-x) - cos(x);
end