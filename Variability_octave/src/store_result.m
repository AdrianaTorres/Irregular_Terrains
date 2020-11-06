%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% store_scalar.m
%
% Store a scalar into yaml file
%
% Anthony Remazeilles & Jawad Masood
% Copyright Tecnalia CTAG 2020 (We may discuss this)
% Beerware license.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function is_ok = store_result(filename, pi, data, title)

    file_id = fopen(filename, "w");
    fprintf(file_id, "type: 'labelled_matrix'\n");
    fprintf(file_id, pi);
    
    value_str = sprintf("[[%s], [", title);
    fprintf(file_id, value_str);
    for i = 1:size(data)(2)
        if (i==size(data)(2))
          value_str = sprintf("%.5f]]", data(i));
          fprintf(file_id, value_str);
        else
        value_str = sprintf("%.5f, ", data(i));
        fprintf(file_id, value_str);
        endif
    endfor
    
    fclose(file_id);
    is_ok = true;
end
