% Function used to create a specific matrix of size n
function b = create_matB(n)
    
    % Create a matrix of 1;s of size 1*n
    b = zeros(n, 1);
          % Loop for each column index j from 1 to n
          for j = 1 : n    
                  % Store 1 as element
                  b(j, 1) = j;
            
          end

end


