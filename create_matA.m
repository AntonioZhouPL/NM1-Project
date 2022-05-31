% Function used to create a specific matrix of size n
function Tn = create_matA(n)
    
    % Create a matrix of 1;s of size 3*n
    Tn = zeros(3, n);
    
    % Loop for each row index i from 1 to 3
    for i = 1 : 3
          
          % Loop for each column index j from 1 to n
          for j = 1 : n
            
            % If row index i is 1
            if i == 1
                  
                  % Store 1 as element
                  Tn(i, j) = 1;
            
            % If row index i is not 1  
            else 
                  
                  % Store i*0.1 as element
                  Tn(i, j) = i*0.1;
              
            end
            
          end
      
    end

end
