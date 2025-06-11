function flag =test_if_data_full(data)

[~,idx]=min(data(:,1));

size_data=size(data);

flag =~((size_data(1)>idx)&&all(data(idx,:)==0));