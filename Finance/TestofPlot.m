x=1
y=1
z=1
NewVar = zeros(1:12,1:52)
for i=1:10
    for j=1:50
        
        e = ['Combine_' num2str(i) '_' num2str(j)]
        
        
        if exist(e)==1
            newmean = ['Combine_' num2str(i) '_' num2str(j) '(:,3)']
            NewVar(i+1,1)= i
            NewVar(1,j+1)= j
            NewVar(i+1, j+1)= mean(eval(newmean))
        else
            NewVar(i+1,1)= i
            NewVar(1,j+1)= j
            NewVar(i+1, j+1)= 0
        end
    end
end
