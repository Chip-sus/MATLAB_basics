%manual for elementary functions
help elfun
%elementary functions
a=2+3*4
b=2*a-5

disp(['testing trigonometric operation'])
x=pi/3
%create a table with 2 rows 2 columns
sinx=[sin(x) sqrt(3)/2]
justANameForVariable=[cos(x) 1/2]

A={0 1;2 4; 9 -1}

i^2
j*j

%creating a vector of element starting from x1 ending in x2 with step size
% dx
x1=1
x2=10
dx=4
[x1:dx:x2]

%the longest allowed name for variable has 63 characters

tic
2:0.01:20
timeItTakesWhenPrinting=toc

tic
2:0.01:20;
timeItTakesWithoutPrinting=toc

A
A([1 3],:)%picking 1st and 3rd row with all columns

