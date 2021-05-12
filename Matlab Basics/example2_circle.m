function [] = main (fig)
N = 1000;
% Drawing a yin yang figure
[x0u, y0u] =  semiCircleXY(0, 0, 1, N);
[x0d, y0d] =  semiCircleXY(0, 0, -1, N);

[x1, y1] =  semiCircleXY(-0.5, 0, -0.5, N);
[x1u, y1u] =  semiCircleXY(-0.5, 0, 0.15, N);
[x1d, y1d] =  semiCircleXY(-0.5, 0, -0.15, N);

[x2, y2] =  semiCircleXY(0.5, 0, 0.5, N);
[x2u, y2u] =  semiCircleXY(0.5, 0, 0.15, N);
[x2d, y2d] =  semiCircleXY(0.5, 0, -0.15, N);

visualise([x0u' x0d' x1' x2' x1u' x1d' x2u' x2d'],...
          [y0u' y0d' y1' y2' y1u' y1d' y2u' y2d'], fig);

end

function [x,y] = semiCircleXY (xc, yc, R, N)
% Compute x- and y- coordinate of a semiCircle
% for center [xc yx] and radius R,
% picking N points.
% R > 0, we refer to the upper half
% R < 0, we refer to the lower half
N = ceil(abs(N));
if (N <= 1) N = 2; end

if(abs(R) == 0)
    dx = 1;
else
    dx = 2 * abs(R)/(N - 1);
end
x = -abs(R):dx:abs(R);

if(sign(R) == 1)% upper half
   y = sqrt(R^2 - x.^2);
elseif(sign(R) == -1) % lower half
   y = -sqrt(R^2 - x.^2);
else%R==0 
   y = 0;
end

% print out the value x and y
x = x + xc;
y = y + yc;
    
end

function [] = visualise (X, Y, fig)

figure(fig);
plot(X, Y, 'r*');
axis equal;


end