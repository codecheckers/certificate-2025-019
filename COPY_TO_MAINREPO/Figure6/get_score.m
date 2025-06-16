function score=get_score(time_vec,vic_requ)

[number_of_competitions,number_of_players]=size(time_vec);
score=zeros(number_of_players,1);
for i=1:number_of_competitions
    helper = time_vec(i,:);
    [val,idx]=min(helper);
    helper=helper-val-vic_requ;

    
    if (sum(helper<=0)==1)
        score(idx)=score(idx)+1;
    end
    
    

end