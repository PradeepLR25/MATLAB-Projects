
%set lower bound.


[row17,col17]=size(Averageall);

for n17=1:row17,
    for m17=1:col17,
        if Averageall(n17,m17)~=0
            Lower(n17,m17)=Averageall(n17,m17)-1.7;
        else
            Lower(n17,m17)=0;
        end
    end
end

if CA == CA
    Averageall = triu(Averageall)
    Lower = triu(Lower)
    PDBall = triu(PDBall)
end

for n17=1:row17,
    for m17=1:col17,
            if  ((m17 > 2 & m17 <= 110)  & (ResidueNumberCA(n17,1) == ResidueNumberCB(m17,1) | ResidueNumberCA(n17,1) == ResidueNumberCB(m17-1,1) | ResidueNumberCA(n17,1) == ResidueNumberCB(m17-2,1) | ResidueNumberCA(n17,1) == ResidueNumberCB(m17+1,1) | ResidueNumberCA(n17,1) == ResidueNumberCB(m17+2,1)))
            Averageall2(n17,m17)=0;
            Lower2(n17,m17) = 0;
            PDBall2(n17,m17) = 0;
        else
            Averageall2(n17,m17) = Averageall(n17,m17);
            Lower2(n17,m17) = Lower(n17,m17);
            PDBall2(n17,m17) = PDBall(n17,m17);
        end
    end
end

            
            