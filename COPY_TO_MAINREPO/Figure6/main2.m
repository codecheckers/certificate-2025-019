data=get_data(1,100,1,4);

players=[1,2];
victories = zeros(50,2,10);
for time_diff=1:50
    for score_helper =9:-1:0
        competation_size=0;
        for i=1:100
            if ~ischar(data{i,max(players)})
                competation_size=competation_size+1;
            else
                disp(i)
            end
        end
        time_vector=zeros(competation_size,length(players));
        vec_iter=1;
        for i=1:100
            if ~ischar(data{i,max(players)})
                time_vector(vec_iter,:)=get_times(data(i,players),score_helper);
                vec_iter=vec_iter+1;
            end
        end
        
        score= get_score(time_vector,time_diff);
        victories(time_diff,:,score_helper+1)=score;
        %disp(score)
        %disp(score_helper)
    end
end

j=1;
for i=1:10
    if ismember(11-i,[3,6,10])
        figure(1)
        subplot(3,1,4-j)
        j=j+1;
        plot(1:length(victories),victories(:,1,i))
        hold on
        plot(1:length(victories),victories(:,2,i))
        xlabel('Time steps')
        ylabel('Number of vicotries')
        if j==2
            legend('stochastic cost function','fuzzy cost function')
        end
        
        title(append('Objective: rescuing ',num2str(11-i),' victims'))
    end
end