% Draw animation of spring pendulum
% Author: Gia Huy Hoang    e1800961
% Group: I-IT-2N2

% In this script, I define constants of a spring pendulum
% system regardless of spring's mass, friction...

%% Initial values
A = 0.2;        % max distance from the rest position
k = 20;         % constant of spring
m = 1;          % mass
w = sqrt(k/m);  % angular velocity 
l0 = 1;         % distance between 2 ends of the spring at rest
%% Calculate instant position of object and animation
for t = 1:0.01:10 
% because of the pause(0.01) command, the animation will run exactly 10 seconds
    x = A*cos(w*t); % equation of position based on time
    
    clf;
    hold on;
    % calling function to calculate the points of spring
    % then draw it
    drawSpring(-l0, x, [1.0 0.5 1.0]); % can set the color of the spring like [a b c]
    % while 0.0 <= a;b;c <= 1.0
    
    % here I plot the object
    plot(x, 0, 'Marker', 'o', 'MarkerSize', 30,...
        'MarkerFaceColor','r','MarkerEdgeColor','r');
    axis([-1 1 -0.6 0.6]); % make the axis stable
    xlabel('x');
    pause(0.01);
end
%% Draw the spring
function [x_p ,y_p, color] = drawSpring(x1, x2, color)
dis = abs(x2 -x1); % distance between 2 ends of the spring at current time
q = 10;            % number of coils
qL = dis/q;        % coil's length
% a 2D spring has coils; a coil contains 2 "open" parts: upper and lower
N = (q+1)*2;       % 12 open parts

% here I define X postion of the very edge points of the spring; each point
% is qL far away from others on the same side (except 2 ends)
x_p = linspace(x1 - qL/4, x2, N);
% then 2 ends:
x_p(1) = x_p(1) + qL/4;
x_p(N) = x_p(N) - qL/4;

% here I define Y position of the points
y_p = zeros(1,N);
for i = 2:N-1
    if mod(i,2)==0
        y_p(i) = 0.1;
    else
        y_p(i) = -0.1;
    end
end

% here I draw the "spring" by points above
spring = plot(x_p, y_p, 'y', 'linewidth', 3);
spring.Color = color;

% axis([-1 1 -0.5 0.5]);

end





