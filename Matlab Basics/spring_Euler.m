% Draw animation of spring pendulum
% Using EULER'S METHOD
% Author: Gia Huy Hoang
% Group: I-IT-2N2

% In this script, I define constants of a spring pendulum
% system regardless of spring's mass, friction...
% Because of using Euler's method, the more time running, the more
% differences between the Eulers and Analytical solution,
% so I decide to run 1 period only.


function spring_Euler()
% mass of object
m = 1;
% constant of spring
k = 1;

% time to happen and number of steps
T = 2*pi/sqrt(m/k);
n = 100;
% value of a step
tS = T/n;

% Euler integration
[t, x] = Euler(m, k, n, tS);

%Plotting
figure(2);
plot(t, x, '-k');
xlabel('t(s)');
ylabel('x');
axis square; % make the axis box square
hold on;
 
% Analytical Solution
t_an = linspace(0, T, 101);
x_an = cos(t_an);

plot(t_an, x_an, '--r');
axis([0 6.5 -1.2 1.2]); % axis limits

legend('Eulers method', 'Analytical sol.', 'Location', 'North');

end

function [t, x] = Euler(m, k, n, tS)

% pre-allocated arrays for x and t
x = zeros(1, n+1);
t = zeros(1, n+1);

% INITIAL CONDITIONS
v = 0; % velocity
x(1) = 1; % location at the beginning
t(1) = 0; % time at the beginning

% Time integration using Euler's method
for i = 1:n
    t(i+1) = t(i) + tS;
    a = -k*x(i)/m; % because F=m*a and F=-k*x
    x(i+1) = x(i) + v*tS; % new location of object after a step of time
    v = v + a*tS; % new accelaration of object after a step time

    % plotting each step for animation
    figure(1);
    %plot(l*sin(theta(n,:)),-l*cos(theta(n,:)),'Marker','o','MarkerSize',20,'MarkerFaceColor','r','MarkerEdgeColor','r');
    plot(x(i),0,'Marker','o','MarkerSize',20,'MarkerFaceColor','r','MarkerEdgeColor','r');
    axis([-2.5 2.5 -0.5 0.5]);

end

end
