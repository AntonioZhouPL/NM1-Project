


function x = solve_using_richardson_by_normal_method(A,B)
    [m,~]=size(A);
    x_new = zeros(m,1);
    x_old = x_new;
    
    tol = 1E-8; %Tolerance
    error = inf;
    iteration=1;
    max_iteration=1000; % Maximum number of iterations to perform
    while (error>tol && iteration<=max_iteration)
        for i=1:m
            %Xi(k+1) = Xi(k) -- Σaij*Xi(k) +bi
            x_new(i) = x_old(i) - A(i,:)*x_old + B(i); 
        end
        error = norm(x_old-x_new);
        x_old = x_new;
    end
    x = x_new;
    fprintf('\nThe solution using Richardsons method with the full matrix is \n')
    fprintf('%f\n', round(x,8));
end
