
%fileNUM=1;
%str=['pGtrunc' num2str(1),'pred.tab']
%[Resid, ResName, AtomName, SS_shift, Shift, RC_shift, HM_shift, sigma, source] = textread(str,'%4d%4s%4s%9.3f%9.3f%9.3f%9.3f%9.3f%s')


row=1
col=1
[n,nul] = size(textdata)
%y=1
m=4
%Restraint(700,1) = [1]
while (row<=n)
    while(col<=m)
            Restraint(n,:) = ['     ',sprintf('%4d',textdata(row,1)) ,'',sprintf('%1s',textdata(row,2)) ,'',sprintf('%4s',textdata(row,3))  ,'',sprintf('%8.3f',data(row,2))  ,''];
            col=col+1;
    end
    row=row+1
    col=1
end

%sprintf('%05.2f', O(row,4))