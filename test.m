clear;
clc;
close all;

%First example
% Tn = [1 1 1 1 1;
%      .2 .2 .2 .2 .2;
%      .3 .3 .3 .3 .3];
% 
% b = [1; 1; 1; 1 ; 1];

n = input('Enter the size A: ');
Tn = create_matA(sqrt(n));
n = input('Enter the size B: ');
b = create_matB(n);
Tn
b
%-------------------------------------------------------------------------

%Second example
% Tn=[1 1 1 1 1 1 1 1 1 1;
%     -.2 -.2 -.2 -.2 -.2 -.2 -.2 -.2 -.2 0;
%     -1 -1 -1 -1 -1 -1 -1 -1 -1 0];
% 
% b=[1; 2; 3; 4; 5; 6; 7; 8 ;9; 10];

%-----------------Transform 3xn Matrix into Normal nxn---------------------

A=transform_3xn(Tn);

%-------------------Positive definite Matrix check------------------------

positive_definite_Matrix_check(A)


%-----------------------Print the True Solution----------------------------
fprintf('\nThe true solution is:\n');

x = A \ b;

fprintf('%f\n', round(x,5));

%--------------------Solve using Richardson Method-------------------------

% y = solve_using_richardson_by_normal_method(A,b);

%------------------Solve using Richardson Method 3xn-----------------------

z = solve_using_richardson_by_three_n_method(Tn,b);







     