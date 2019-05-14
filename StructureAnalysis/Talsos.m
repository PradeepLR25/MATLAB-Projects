
row=1
col=1
[n,nul] = size(textdata)
y=1
m=4
%Restraint(700,1) = [1]
while (row<=n)
    while(col<=1)
        if char(AtomName(row,1))=='N'
            Restraint(y,:) = ['     ',sprintf('%4.0d',Resid(row,1)) ,' ',sprintf('%0.1s',char(ResName(row,1))) ,'',sprintf('%10.4s',char(AtomName(row,1))) ,'               ',sprintf('%8.3f',data(row,2)) ,''];
            col=col+1;
            y=y+1;
        else
            col=col+1;
        end
    end
    row=row+1
    col=1
end

%sprintf('%4d',textdata(row,1))     sprintf('%1s',textdata(row,2))   sprintf('%4s',textdata(row,3))  