function times=get_times(data,idx)

number_of_times=length(data);
times=zeros(number_of_times,1);

for i=1:number_of_times
    idx_helper=idx;
    while true
        sample=data{i};
        temp = find(sample(:,1)==idx_helper);
        if isempty(temp)
            if idx_helper==0
                times(i)=inf;
                break
            else
                idx_helper=idx_helper-1;
            end
        else
            times(i)=temp(1);
            break
        end
    end
end

end