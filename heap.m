function [p,c,index] = heap(n, p, c, index)

% Heap's algorithm. Generates all permutations in lexicographic order

while(index < n)
    if(c(index + 1) < index)
        if(rem(index,2) == 0)
            temp = p(1);
            p(1) = p(index + 1);
            p(index + 1) = temp;
        else
            temp = p(c(index + 1) + 1);
            p(c(index + 1) + 1) = p(index + 1);
            p(index + 1) = temp;
        end
        c(index + 1) = c(index + 1) + 1;
        index = 0;
        break;
    else
        c(index + 1) = 0;
        index = index + 1;
    end
end

end


