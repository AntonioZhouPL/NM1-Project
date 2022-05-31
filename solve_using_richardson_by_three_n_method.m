 function x1 = solve_using_richardson_by_three_n_method(Tn,b)
     [m,n] = size(Tn);
      x_new = zeros(n,1);
      x_old = x_new;
      tol = 1E-8;
      error = inf;
      iter = 1;
      max_iter = 1000;% Maximum number of iterations to perform

while (error>tol && iter<=max_iter)
%Row1(which is the main diagonal)
x_new(1) = x_old(1) - ( Tn(1,1)*x_old(1) + Tn(2,1)*x_old(2) ) + b(1); 

for i = 2:n-1
%Row2
x_new(i) = x_old(i) - ( Tn(3,i-1)*x_old(i-1) + Tn(1,i)*x_old(i) + Tn(2,i)*x_old(i+1) ) + b(i);

end
%Row3
x_new(n) = x_old(n) - ( Tn(3,n-1)*x_old(n-1) + Tn(1,n)*x_old(n) ) + b(n);%The last row

error = norm(x_old-x_new);

x_old = x_new;

end
x1 = x_new;
fprintf('\nThe solution using Richardsons method with the 3*n matrix is: \n')
fprintf('%f\n', round(x1,5));
    end