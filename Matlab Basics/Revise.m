function [] = Revise()

%% A pair of linear equation
A = [2 3; 6 8]
A = [2 3; 6 9]
b = [4 12]'
b = [4 13]'

%% using Inverse matrix
% Ainv = inv(A)
% x = Ainv * b
% A * Ainv

%% using Rref
C = rref([A b])
% C(:, 1:size(A, 1))
% eye(size(A, 1))
% C(:, 1:size(A, 1)) == eye(size(A, 1))

if(C(:, 1:size(A, 1)) == eye(size(A, 1)))
    disp(['A unique solution found!']);
    x_y = C(:, end)'
elseif(C(end, :) == zeros([1 size(A, 2)+ 1]))
    disp(['Infinitely many solutions! Some of which are...']);
    x = 3:0.1:4;
    
    p = C(1,[1 3]);
    p(1, 1) = -p(1, 1);
    p = p/C(1, 2);
    
    y = polyval(p, x);
    [x' y']
elseif(C(end ,end) ~= 0)
    disp(['Solution does not exist!']);
end

end