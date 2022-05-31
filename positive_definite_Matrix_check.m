%-------------------Positive definite Matrix check------------------------
function positive_definite_Matrix_check(A)
    fprintf('\n');
    
    eig_A = eig(A);
    
    dot1 = 0;
    for i = 1:rank(A)
      if eig_A(i) <= 0 
      dot1 = 1;
      end
    end
    dot = 0;
    for i = 1:rank(A)
        if eig_A(i)>0 && eig_A(i) <1
            dot = 1;
        end 
    end
    if dot1 == 1
      disp('the matrix is not positive definite')
      else
      disp('the matrix is positive definite')
    end
    if dot == 1
        disp('eigenvalues are in (0,2)')
      else
      disp('eigenvalues are not in (0,2)')
    end
end