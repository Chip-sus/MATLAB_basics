function [] = Star()
% Number of horns of a star
N = 2;

% A table for value of points of tips of the star


% Cases for N
    if (N == 0)
        disp (['Invalid number of horns!!!']);
        
    elseif(N == 1)
        plot(0, 0, 'Marker', '*', 'MarkerSize', 10);
        
    elseif(N == 2)
        [points] = generatePoints(N);
        points
        %drawStar(N, points);
    end

end


function [] = drawStar(N, points)
    for(i = 1:N)
        plot() 
    end


end


function [points] = generatePoints(N)
    if (N == 2)
        points = zeros([N 2]);
        for (i = 1:N)
            for(j = 1:N)
                points(i, j) = 1;
            end
        end
    end

end


plot(1,1)














