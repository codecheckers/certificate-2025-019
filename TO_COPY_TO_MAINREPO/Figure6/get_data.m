function res = get_data(i_start,i_end,j_start,j_end)

res=cell(i_end-i_start+1,j_end-j_start+1);

for i=i_start:i_end
    i_iter= i-i_start+1;
    for j=j_start:j_end
        j_iter= j-j_start+1;
        file_name =append('recordings\',num2str(i),'_',num2str(j),'f\data.csv');
        if isfile(file_name)
            val=readmatrix(file_name);
            if test_if_data_full(val)
                res{i_iter,j_iter}=val;
            else
                res{i_iter,j_iter}='unfinished';
            end
        else
            res{i_iter,j_iter}='no results';
        end

    end

end


end
