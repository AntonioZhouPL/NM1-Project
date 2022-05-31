%---------------- Transform function ------------------------------
function A=transform_3xn(three_by_n)
     %initialize Matrix A and set all elements to 0
     A=zeros(length(three_by_n));
    
     %length(three_by_n) returns the length of the
     % largest array dimension in X .
    for i=1:length(three_by_n) 
        %And here we transformed the First row from
        %3*n Matrix to main diagonal in Normal Matrix A
        A(i,i)=three_by_n(1,i); 
        if i<length(three_by_n)
            %Here we transformed the second row from
            %3*n Matrix to upper diagonal in Normal Matrix A
            A(i,i+1)=three_by_n(2,i);
            %And now we transformed the third row from
            %3*n Matrix to lower diagonal in Normal Matrix A
            A(i+1,i)=three_by_n(3,i);
        end
    end
    %And now we finished our transformed.
 end