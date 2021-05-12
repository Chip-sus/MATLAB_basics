function [] = example3_drawing ()
plot2D ()
plot3D ()

end

function [] = plot3D ()

t = 0:0.005:1;
N = length(t);

fx1 = 1;
px1 = 1800;
Ax1 = 0.2;
x1 = Ax1 * sin(fx1*(2*pi)*t-px1);

fy1 = 1;
py1 = 0;
Ay1 = 0.2;
y1 = Ay1 * cos(fy1*(2*pi)*t-py1);

%z = zeros([1 N]);
z1 = t;

figure(2);
clf;
hold on;
plot3(x1, y1, z1, 'ro');
grid on;
xlabel('x');
ylabel('y');
zlabel('z');
view(0,0);
%aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
fx2 = 1;
px2 = 1800;
Ax2 = 0.2;
x2 = Ax2 * sin(fx2*(2*pi)*t-px2);

fy2 = 1;
py2 = 0;
Ay2 = 0.2;
y2 = Ay2 * cos(fy2*(2*pi)*t-py2);

%z = zeros([1 N]);
z2 = t;

figure(2);
clf;
hold on;
plot3(x2, y2, z2, 'b-.');
grid on;
xlabel('x');
ylabel('y');
zlabel('z');
view(0,0);
end

function [] = plot2D()
%fixing x-coordinates
X = [1 2 3 4 5 6];

%fixing y-coordinates
Y = [1 2 3 4 5 6];
%common parameter t
N = 1e3; % the number of points to be plotted
ts = 0; % initial parameter value
te = 1; % final parameter value

t = linspace(ts,te,N) % all the parameter values

tPartition = [2 2 1 1 2 2]; % the length should be equal to length(X)!

tPartition = tPartition / sum(tPartition); % making them fractions

T = t([1 round(cumsum(tPartition) * N)]); % using these to fix the pa

[px, py] = parameterSolver (X , Y, T);

x = px(1) + px(2)*t + px(3)*t.^2 + px(4)*t.^3;
y = py(1) + py(2)*t + py(3)*t.^2;
x0 = px(1) + px(2)*T + px(3)*T.^2 + px(4)*T.^3;
y0 = py(1) + py(2)*T + py(3)*T.^2;

visualize(x,y,t,x0,y0)
end

function [px, py] = parameterSolver(x, y, t)

%Ax = vander([t(1) t(3) t(5) t(7)]);
%Ax = Ax(:,end:-1:1)

Ax=[...
    1 t(1) t(1)^2 t(1)^3;...
    1 t(3) t(3)^2 t(3)^3;...
    0 1  2*t(3) 3*t(3)^2;...
    1 t(7) t(7)^2 t(7)^3 ...
    ];
px = Ax \ [x(1) x(5) 0 x(6)]';

Ay=[...
    1 t(1) t(1)^2;...
    1 t(4) t(4)^2;...
    0 1  2*t(4) ...
    ];

%Ay = vander([t(1) t(4) t(7)]);
%Ay = Ay(:,end:-1:1)
py = Ay \ [y(1) y(6) 0]';

end

function [] = visualize (x,y,t,x0,y0)

figure(1);
clf;
hold on;
plot (x, y, 'b-.');
plot (x0, y0, 'r*');
end