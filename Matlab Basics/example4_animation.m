function [] = example4_animation ()

plotSurface (4)

end

function [] = plotSurface (fig)

x = [0:0.1:2*pi];
y = [0:0.1:2*pi+1];

Z1 = constructZvectorized (x, y, 3);
Z2 = constructZvectorized (x, y, 2);


figure(fig);
clf;

a = [0:0.01:1];
Na = length(a);

for (k = 1:2*Na - 1)
    ind = Na - abs(k - Na);
    z = (1 - a(ind)) * Z1 - a(ind) * Z2;
    surf(x,y,z);
    zlim([-1 1]);
    pause(0.01);
end

end

function [Z] = constructZvectorized (x, y, pickSurface)

Nx = length(x)
Ny = length(y)

X = repmat(x,[Ny 1]);
Y = repmat(y',[1 Nx]);

%these are for debugging
%size(X)
%size(Y)

Z = defineSurfaceForm(X, Y, pickSurface);

end

function [z] = defineSurfaceForm (x, y, opt)
if (opt == 1) 
    z = x.*y;
    z = z/max(max(abs(z)));
elseif (opt == 2)
    z = sin (x).*cos(2*y);
    z = z/max(max(abs(z)));
elseif (opt == 3)
    R = 2;
    z = real(sqrt(R^2 - (x - mean(mean(x))).^2 - (y - mean(mean(y))).^2));
    z = z/max(max(abs(z)));
else
    s = size(x);
    Nx = s(2);
    Ny = s(1);
    z = zeros([Ny Nx]);
end
end