function conlacloxo
clc
close all
clear all

%% INPUT DATA
l0 = 0.1;
A = 0.02;
m = 0.1;
k = 1;
dt = 0.01;
tmax = 100;

%% Xu ly
x = A;
v = 0;
t = 0;
y = 0;
a = -k*x/m;

t_array = t;
x_array = x;
v_array = v;
a_array = a;

%% FIGURE
fig1 = figure('name','Con lac lo xo');
hold on
set(gcf,'Units','normalized');
set(gcf,'Position',[0 0.1 0.5 0.32]);
fig_loxo = veloxo(-l0,x,(l0+A)/20,10,[0.5 0.5 0.5],'',false);
fig_quanang = plot([x y],'ro','MarkerSize',30,'markerfacecolor','r');

axis equal
axis([-l0 3*A -0.15*l0 0.15*l0]);
%% CALCULATION

while t<tmax
t = t+dt;
t_array = [t_array t];

a = -k*x/m;
v = v+a*dt;
x = x+v*dt+0.5*a*dt*dt;

x_array = [x_array x];
v_array = [v_array v];
a_array = [a_array a];

figure(fig1);
veloxo(-l0,x,(l0+A)/20,10,[0.5 0.5 0.5],fig_loxo,true);
set(fig_quanang,'xdata',x,'ydata',y);
pause(0.002);
end
end

%% Ham ve lo xo
function loxo = veloxo(x1,x2,A,q,color,fun,velai)
dis = abs(x2-x1); % l0+x = 0.12
lambda = dis/q; % (l0+x)/10 = 0.012

N = (q+1)*2; %(10+1)*2 = 22
x_lx = linspace(x1-lambda/4,x2,N); % (-0.103, 0.02, 22)
x_lx(1) = x_lx(1)+lambda/4; % 
x_lx(N) = x_lx(N)-lambda/4;
y_lx = zeros(1,N);

for i = 2:N-1
if mod(i,2)==0
y_lx(i) = A;
else
y_lx(i) = -A;
end
end

if velai == false
loxo = plot(x_lx,y_lx,'y','linewidth',2);
loxo.Color = color;
else
set(fun,'xdata',x_lx,'ydata',y_lx,'color',color);
end
end

