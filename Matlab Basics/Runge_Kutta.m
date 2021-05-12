function [] = Runge_Kutta(fig)

% initial conditions
x0 = 0;
y0 = 1;

xend = 1;       % ending condition
hdesired = 0.11; % step size desired

% call a function to calculate the approximate value and return points to
% plot using Euler method
method = 'Euler';
[xE, yE, p] = propagate(x0, y0, xend, hdesired, method)

% Runge Kuttta method
method = 'Ru-Ku';
[xRK, yRK, p] = propagate(x0, y0, xend, hdesired, method)

visualize(fig, xE, yE, xRK, yRK, p, x0, y0);
end

function [] = visualize(fig, x1, y1, x2, y2, p, x0, y0)
    figure(fig);
    clf;
    hold on;
    plot(x1, y0*exp(p*(x1 - x0)), 'bo-');
    plot(x1, y1, 'bx');
    plot(x2, y2, 'r.');
    
end

function [x, y, p] = propagate (x0, y0, xend, hdesired, method)
    N = ceil((xend - 0)/hdesired);      % number of steps
    h = (xend - x0)/N               % step size
    
    % initialize
    x = zeros([N+1 1]);
    y = zeros([N+1 1]);
    
    % initial condition
    x(1) = x0;
    y(1) = y0;
    
    for(n = 1:N)
       if(method == 'Euler')
           x(n+1) = x(n) + h;
           [k0, p] = evaluateODE(x(n), y(n));
           y(n+1) = y(n)+ k0*h;
       elseif(method == 'Ru-Ku')
           [k0, p] = evaluateODE(x(n), y(n));
           xmid = x0 + 0.5*h;
           y1 = y(n) + k0*0.5*h;
           
           [k1, p] = evaluateODE(xmid, y1);
           y2 = y(n) + k1*0.5*h;
           
           [k2, p] = evaluateODE(xmid, y2);
           y3 = y(n) + k1*h;
           x(n+1) = x(n) + h;
           
           [k3, p] = evaluateODE(x(n+1), y3);
           k = (k0 + 2*k1 + 2*k2 + k3) / 6;
           y(n+1) = y(n) + k*h;
           
       else
           %
       end
           
    end    
end

function [k, Dy] = evaluateODE(x, y)
    k = 1;
    Dy = k*y;
end






    