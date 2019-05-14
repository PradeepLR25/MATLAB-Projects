%TriUp = triu(Averageall);
%TriUpUp = triu(PDBall);

%[row4,col4] = size(Averageall);


%for n3=1:row4,
%    f=1
%    x=1
%    if sum(TriUp(n3,:)) == 0
%       delete(1,1) = n3;
%       ResidueNumber(n3,1) = 0;
%   else
%      ResidueNew(n3,1) = ResidueNumber(n3,1);
%  end
%    for m3=1:col4,
%        if TriUp(n3,x) ~= 0;
%           Matching(n3,f) = x;
%           Avg(n3,f) = TriUp(n3,x);
%           upperRes(n3,f) = TriUpUp(n3,x);
%           x=x+1;
%           f=f+1;
%       else
%            x=x+1;
%        end
%    end
%end

[row17,col17]=size(TriUp);

for n17=1:row17,
    for m17=1:col17,
        if TriUp(n17,m17)~=0
            TriUplower(n17,m17)=TriUp(n17,m17)-1.7;
        else
            TriUplower(n17,m17)=0;
        end
    end
end

for n3=1:row4,
    f=1
    x=1
    %if sum(TriUp(n3,:)) == 0
    %    delete(1,1) = n3;
    %    ResidueNumber(n3,1) = 0;
    %else
    %    ResidueNew(n3,1) = ResidueNumber(n3,1);
    %end
    for m3=1:col4,
        if TriUp(n3,x) ~= 0;
           Matching(n3,f) = x;
           Avg(n3,f) = TriUp(n3,x);
           upperRes(n3,f) = TriUpUp(n3,x);
           lowerRes(n3,f) = TriUplower(n3,x);
           x=x+1;
           f=f+1;
        else
            x=x+1;
        end
    end
end


%[row17,col17]=size(Matching);

%for n17=1:row17,
%    for m17=1:col17,
%        if Matching(n17,m17)~=0
%            lowerRes(n17,m17)=Avg(n17,m17)-1.7;
%        else
%            lowerRes(n17,m17)=0;
%        end
%    end
%end


[row4,col4]=size(Matching);
for n4=1:row4,
    for m4=1:col4,
        if n4+1== Matching(n4,m4) | n4+2==Matching(n4,m4) | n4-2==Matching(n4,m4) | n4-1==Matching(n4,m4)
            Matching(n4,m4) = 0;
            Avg(n4,m4) = 0;
            upperRes(n4,m4) = 0;
            lowerRes(n4,m4)=0;
        else
        end
    end
end
g=1
for n5=1:row4,
f=1
        
    for m5=1:col4,
        if Matching(n5,m5) ~=0
            Matching2(n5,f) = Matching(n5,m5);
            Avg2(n5,f) = Avg(n5,m5);
            upperRes2(n5,f) = upperRes(n5,m5);
            Matching(n5,m5) = 0;
            Avg(n5,m5) = 0;
            upperRes(n5,m5) = 0;
            lowerRes2(n5,f)= lowerRes(n5,m5);
            lowerRes(n5,m5)=0;
            
            f=f+1;
        end
    end
        
end
[row6,col6] = size(Matching2);
f=1
for n6=1:row6,
    if sum(Matching2(n6,:)) ~= 0
        ResidueNew2(f,1) = ResidueNew(n6,1);
        Matching3(f,:) = Matching2(n6,:);
        Avg3(f,:) = Avg2(n6,:);
        upperRes3(f,:) = upperRes2(n6,:);
        lowerRes3(f,:) = lowerRes2(n6,:);
    f=f+1;    
    end
end

[row,col] = size(Matching3);
num=1
for n8=1:row,
    for m8=1:col,
        if Matching3(n8,m8)~=0
            Restraint(num,:) = ['assign (resid ',sprintf('% 4.0f',ResidueNew2(n8,1)) ,' and name CB)   (resid ',sprintf('% 4.0f',Matching3(n8,m8)) ,' and name  CB) ',sprintf('%05.2f',Avg3(n8,m8))  ,' ',sprintf('%05.2f',lowerRes3(n8,m8))  ,' ',sprintf('%05.2f',upperRes3(n8,m8))  ,''];
        num=num+1;    
        end
    end
end
    
    
    
    
        %if sum(Matching(n5,:))~=0
         %   ResidueNew2(g,1) = ResidueNew(n5,1);
          %  g=g+1;
          %end