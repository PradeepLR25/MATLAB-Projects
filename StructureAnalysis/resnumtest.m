x=1
for n3=1:row4,
    f=1
    
    if sum(TriUp(n3,:)) ~= 0
       ResidueNew(x,1) = ResidueNumber(n3,1);
       x=x+1;
    else
    end
end