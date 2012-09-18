function [matrix] = zeroing (table)

[rows cols] = size(table);
if rows > 1
    if table(rows, 1) ~=0 
        scale = -table(rows,1) * table(1,:);
        matrix = table;
        matrix(rows,:) = scale + table(rows,:);
        zeroing(matrix(1:end-1, :));
    end
end
