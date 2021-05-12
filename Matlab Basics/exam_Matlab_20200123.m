function [] = exam_Matlab_20200123 (task)%JOJ

%Please follow the instructions in the following tasks. %JOJ
%In each section of the if-structure you are given an assignment. %JOJ
%Modify this file such that your production fulfils the given task. %JOJ
%Do not change the if-structure. %JOJ
%Try to use the routines given in HINTs. %JOJ
%Remember Matlab help! %JOJ
%DO NOT TOUCH THE COMMAND LINES ENDING WITH %JOJ!!!!!

if(task==0)%JOJ
    %Testing.. %JOJ
    disp(['This is how you execute your solution to an exercise ',num2str(task),'!']); %JOJ

elseif(task==1)%JOJ
    %Compute %JOJ
    %a) (2+3)*(4+5) %JOJ
    %b) the square root of 2 %JOJ
    %c) the dot product of vectors [1 2 3 ... 100] and [2 5 8 ... 299]. %JOJ
    %HINT: sqrt, sum, [a:n:b] %JOJ
    a = (2+3)*(4+5);
    b = sqrt(2);
    c = dot([1:1:100], [2:3:299])

elseif(task==2)%JOJ
    %Produce a graph of a function of your choice %JOJ
    %(a sinusoidal function in the interval [0,2*pi] for example). %JOJ
    %HINT: linspace , sin, figure, plot %JOJ
    x = 0:0.01:4*pi;
    y = sin(x);
    figure(2);
    hold on;
    plot(x, y, '--r');
    axis([0 4*pi -2 2]);
    
    
    
elseif(task==3)%JOJ
    %a) %JOJ
    %Produce another figure including graphs of %JOJ
    %a straight line with slope 1 passing through point (x,y)=(0,-2) %JOJ
    %and a rightwards opening parabola (the root function). %JOJ
    %b) %JOJ
    %What are the interception points of those graphs? %JOJ
    %Type the coordinates of the inteception into the figure, %JOJ
    %as text(x,y,'text') or legend, for example %JOJ
    %HINT: linspace , figure, clf, hold, plot, grid, axis %JOJ
    

    % Function of that straight line:
    x = -5:0.01:10;
    y = x - 2;
    
    % Function of the parabol:
    a = 0:0.1:10;
    bupper = sqrt(a);
    blower = -sqrt(a);
    % Plot...
    figure(3);
    hold on;
    grid on;
    %axis([-5 10 -6 6]);
    axis equal;
    xlabel('x');
    ylabel('y');
    
    plot(x, y, 'b');
    plot(0, -2, 'ro');
    plot(a, bupper, 'c');
    plot(a, blower, 'c');
    
    text(4, 2, 'First interception (4,2)');
    text(1, -1, 'Second interception (1,-1)');
    
elseif(task==4)%JOJ
    %Solve the system of equations: %JOJ
    % x+2y+3z+4w=5 %JOJ
    %2x+3y+4z+5w=6 %JOJ
    %3x-4y-5z-6w=7 %JOJ
    %5x-4y+3z-2w=1 %JOJ
    %HINT: [,,;,,]', \, inv, rref %JOJ
    
    
    a = [1, 2, 3, 4;...
         2, 3, 4, 5;...
         3,-4,-5,-6;...
         5,-4, 3,-2];
    b = [5,6,7,1]';
    ainv = inv(a);
    disp('Answers for x, y, z, w:');
    answer = ainv*b;
    disp(answer);
    
    
elseif(task==5)%JOJ
    %Compare the speeds of matrix inversion routines 'inv' and '\' (slash). %JOJ
    %Test matrices of different sizes. %JOJ
    %You may want to draw a figure of the timing data. %JOJ
    %Which do you consider faster? %JOJ
    %HINT: zeros, for, rand, tic, toc, plot %JOJ
    
    
    inverseTime = zeros(1, 100);
    slashTime = zeros(1, 100);
    
    for i = 1:1:100
        a = rand(i);

        tic
        ainv = inv(a);
        inverseTime(i) = toc;

        tic
        aslash = eye(i)/a;
        slashTime(i) = toc;
    end
    clf;
    figure(5);
    hold on;
    % here I plot 100 pairs of points
    plot(inverseTime, 'r');
    plot(slashTime, 'b');
    
    text(1, -1*10^-4, 'In general, it seems that the blue line is higher')
    text(1, -1.5*10^-4, 'so I consider the inv() function faster')
    axis([0 100 -2*10^-4 8*10^-4]);
    
    
elseif(task==6)%JOJ
    %Integrate sin(x/2)/x with respect to x from 0 to 1. %JOJ
    %HINT: sum %JOJ
    
    
    %  here I use built-in function of matlab int():
    %int(S,v,a,b) is the definite integral of S with respect to v
    %from a to b. The integration interval can also be specified
    %using a row or a column vector with two elements, i.e., valid
    %calls are also int(S,v,[a,b]) or int(S,v,[a b]) and
    %int(S,v,[a;b]).
    
    syms x;
    
    answer = int(sin(x/2)/x, x, [0 1])
    disp('Change type to double:')
    double(answer)
    
elseif(task==7)%JOJ
    %Calculate the derivative function of sin(x/2)/x with respect to x %JOJ
    %in the interval from 0 to 1. %JOJ
    %HINT: diff %JOJ
    
%     h = .001; x = 0:h:pi;
%        diff(sin(x.^2))/h
    
    
    
elseif(task==8)%JOJ
    %Debug the given code, that is, %JOJ
    %correct the errors in it. %JOJ
    %The code you copy-paste here from the course home page.
    
    a=1
    %Add one into a.
    b=a+1
    
    %----------
    A=[1 2;3 4;5 6]
    B=[6 5;4 3;2 1]
    %Add the corresponding elements of tables A and B. 
    %Choose the elements of B such that 
    %all elements in the result sum_result are equal.
    disp('I added 1 to the missing element of B, so all elements in the result sum_result are equal')
    sum_result=A+B
    
    %Multiply the corresponding elements of tables A and B.
    disp('I added the dot')
    product_result=A.*B
    
    C=[1 2 3;4 5 6]
    %Multiply matrices A and C.
    disp('I removed the dot')
    matrixproduct=A*C
    %----------
    disp('I just kept sin(x)')
    x=0:0.1:10;
    y=sin(x);
    figure(1);
    clf;
    plot(x,y,'b.-');
    %----------
    disp('The code just missed an "end" ')
    for(k=1:10)
        small_pieni=3;
        large_suuri=8;
        if(k<=small_pieni)
            disp([num2str(k),' is small//on pieni']);
        elseif(k>small_pieni && k<large_suuri)
            disp([num2str(k),' is suitable//on sopiva']);
        else
            disp([num2str(k),' is large//on suuri']);
        end
    end
    
    
elseif(task==9)%JOJ
    %Pick 7 random integers in interval [1,40]. %JOJ
    %How often consecutive integers occur? %JOJ
    %Study the occurrence by sampling 10^6 times %JOJ
    %The expected result is around 1.05 times per pick. %JOJ
    %HINT: for, randperm, sort, diff, ==, find, length, mean %JOJ
    c = 0;
    for i = 1:1:10^6
       random = randperm(40, 7);
       
           for j = 1:1:6
                if(random(j) == random(j+1)-1)
                    c = c + 1;
                end
           end
    end
    
    disp(c)
    
    
    
    
elseif(task==10)%JOJ
    %Come up with an idea of your own. %JOJ
    
    % some music (not complete yet)
    
    clear all
    % Frequency of notes
    C2 = 65.41;
    Cs2 = 69.3;
    D2 = 73.42;
    Ds2 = 77.78;
    E2 = 82.41;
    F2 = 87.31;
    Fs2 = 92.5;
    G2 = 98;
    Gs2 = 103.83;
    A2 = 110;
    As2 = 116.54;
    B2 = 123.47;
    
    C3 = 130.82;
    Cs3 = 138.59;
    D3 = 146.83;
    Ds3 = 155.56;
    E3 = 164.81;
    F3 = 174.61;
    Fs3 = 185;
    G3 = 196;
    Gs3 = 207.65;
    A3 = 220;
    As3 = 233.08;
    B3 = 246.94;
    
    C4 = 261.63;
    Cs4 = 277.18;
    D4 = 293.66;
    Ds4 = 311.13;
    E4 = 329.63;
    F4 = 349.23;
    Fs4 = 369.99;
    G4 = 392;
    Gs4 = 415.3;
    A4 = 440;           % A4 = 440 Hz
    As4 = 466.16;
    B4 = 493.88;
    
    C5 = 523.20;
    Cs5 = 554.37;
    D5 = 587.33;
    Ds5 = 622.20;
    E5 = 659.26;
    F5 = 698.46;
    Fs5 = 739.99;
    G5 = 783.99;
    Gs5 = 830.61;
    A5 = 880;
    As5 = 932.33;
    B5 = 987.77;
    
    C6 = 1046.5;
    Cs6 = 1108.73;
    D6 = 1174.66;
    Ds6 = 1244.51;
    E6 = 1318.51;
    F6 = 1396.91;
    Fs6 = 1479.98;
    G6 = 1567.98;
    Gs6 = 1661.22;
    A6 = 1760;
    As6 = 1864.66;
    B6 = 1975.53;

    % Sample sound (Fur Elise):
    % bar 0
    generateSound(E5, 0.20, 0);

    generateSound(Ds5, 0.20, 0);
    % bar 1
    generateSound(E5, 0.20, 0);

    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);

    generateSound(B4, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    % bar 2
    generateSound([A4; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(C4, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(A4, 0.20, 0);
    % bar 3
    generateSound([B4; E2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(Gs3, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(Gs4, 0.20, 0);
    
    generateSound(B4, 0.20, 0);
    % bar 4
    generateSound([C5; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(E5, 0.20, 0);

    generateSound(Ds5, 0.20, 0);
    % bar 5
    generateSound(E5, 0.20, 0);

    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);

    generateSound(B4, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    % bar 6
    generateSound([A4; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(C4, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(A4, 0.20, 0);
    % bar 7
    generateSound([B4; E2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(Gs3, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    
    generateSound(B4, 0.20, 0);
    % bar 8
    generateSound([A4; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    pause(0.20);
    % bar 0
    generateSound(E5, 0.20, 0);

    generateSound(Ds5, 0.20, 0);
    % bar 1
    generateSound(E5, 0.20, 0);

    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);

    generateSound(B4, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    % bar 2
    generateSound([A4; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(C4, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(A4, 0.20, 0);
    % bar 3
    generateSound([B4; E2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(Gs3, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(Gs4, 0.20, 0);
    
    generateSound(B4, 0.20, 0);
    % bar 4
    generateSound([C5; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(E5, 0.20, 0);

    generateSound(Ds5, 0.20, 0);
    % bar 5
    generateSound(E5, 0.20, 0);

    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);

    generateSound(B4, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    % bar 6
    generateSound([A4; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(C4, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(A4, 0.20, 0);
    % bar 7
    generateSound([B4; E2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(Gs3, 0.20, 0);
    
    generateSound(D4, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    
    generateSound(B4, 0.20, 0);
    % bar 9
    generateSound([A4; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(B4, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    % bar 10
    generateSound([E5; C3], 0.20, 0);
    
    generateSound(G3, 0.20, 0);
    
    generateSound(C4, 0.20, 0);
    
    generateSound(G4, 0.20, 0);
    
    generateSound(F5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    % bar 11
    generateSound([D5; B2], 0.20, 0);
    
    generateSound(G3, 0.20, 0);
    
    generateSound(B3, 0.20, 0);
    
    generateSound(F4, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    % bar 12
    generateSound([C5; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    % bar 13
    generateSound([B4; E2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    % bar 14
    generateSound(E5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(E6, 0.20, 0);
    
    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(Ds5, 0.20, 0);
    % bar 15
    generateSound(E5, 0.20, 0);
    
    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(Ds5, 0.20, 0);
    % bar 16
    generateSound(E5, 0.20, 0);
    
    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(B4, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    % bar 17
    generateSound([A4; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(C4, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(A4, 0.20, 0);
    % bar 18
    generateSound([B4; E2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(Gs3, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(Gs4, 0.20, 0);
    
    generateSound(B4, 0.20, 0);
    % bar 19
    generateSound([C5; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(E5, 0.20, 0);

    generateSound(Ds5, 0.20, 0);
    % bar 20
    generateSound(E5, 0.20, 0);

    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);

    generateSound(B4, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    % bar 21
    generateSound([A4; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(C4, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(A4, 0.20, 0);
    % bar 22
    generateSound([B4; E2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(Gs3, 0.20, 0);
    
    generateSound(D4, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    
    generateSound(B4, 0.20, 0);
    % bar 23
    generateSound([A4; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(B4, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    % bar 10
    generateSound([E5; C3], 0.20, 0);
    
    generateSound(G3, 0.20, 0);
    
    generateSound(C4, 0.20, 0);
    
    generateSound(G4, 0.20, 0);
    
    generateSound(F5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    % bar 11
    generateSound([D5; B2], 0.20, 0);
    
    generateSound(G3, 0.20, 0);
    
    generateSound(B3, 0.20, 0);
    
    generateSound(F4, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    % bar 12
    generateSound([C5; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    % bar 13
    generateSound([B4; E2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    % bar 14
    generateSound(E5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(E6, 0.20, 0);
    
    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(Ds5, 0.20, 0);
    % bar 15
    generateSound(E5, 0.20, 0);
    
    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(Ds5, 0.20, 0);
    % bar 16
    generateSound(E5, 0.20, 0);
    
    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);
    
    generateSound(B4, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    % bar 17
    generateSound([A4; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(C4, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(A4, 0.20, 0);
    % bar 18
    generateSound([B4; E2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(Gs3, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(Gs4, 0.20, 0);
    
    generateSound(B4, 0.20, 0);
    % bar 19
    generateSound([C5; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(E5, 0.20, 0);

    generateSound(Ds5, 0.20, 0);
    % bar 20
    generateSound(E5, 0.20, 0);

    generateSound(Ds5, 0.20, 0);
    
    generateSound(E5, 0.20, 0);

    generateSound(B4, 0.20, 0);
    
    generateSound(D5, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    % bar 21
    generateSound([A4; A2], 0.20, 0);
    
    generateSound(E3, 0.20, 0);
    
    generateSound(A3, 0.20, 0);
    
    generateSound(C4, 0.20, 0);
    
    generateSound(E4, 0.20, 0);
    
    generateSound(A4, 0.20, 0);
    % bar 22
    generateSound([B4; E2], 0.20, 0);
    
    generateSound(D3, 0.20, 0);
    
    generateSound(Gs3, 0.20, 0);
    
    generateSound(D4, 0.20, 0);
    
    generateSound(C5, 0.20, 0);
    
    generateSound(B4, 0.20, 0);




    
    
elseif(task==11)%JOJ
    %Provide feedback on %JOJ
    %a) the course %JOJ
    %b) the exam. %JOJ
    %Write your feedback here as a comment. %JOJ
    disp('I think this course with MatLAB is interesting')
    disp('5*/5*')
    
    
end%JOJ
end

function [note, Fs] = generateSound(F, t, timePause)
    Fs=16000;
    Ts=1/Fs;
    
    duration = [0:Ts:t];
    note = sin(2*pi*F*duration);
    sound(note, Fs);
    pause(t + timePause);

end