%Restraint file

[row16,col16]=size(Averageall2)
num=1
%F = ResidueNew
%G=F'
for n16=1:row17,
    for m16=1:col17,
        if Averageall2(n16,m16) ~= 0 & sum(m16 == numberlistALL) == 1 & sum(n16 == numberlistALL2) == 1
            Restraint(num,:) = ['assign (resid ',sprintf('% 4.0f',ResidueNumberCA(n16,1)) ,' and name CA)   (resid ',sprintf('% 4.0f',ResidueNumberCB(m16,1)) ,' and name  CA) ',sprintf('%05.2f',Averageall2(n16,m16))  ,' ',sprintf('%05.2f',Lower2(n16,m16))  ,' ',sprintf('%05.2f',PDBall2(n16,m16))  ,''];
                num=num+1;
        end
    end
end