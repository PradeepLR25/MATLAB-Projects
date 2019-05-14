
CA = 'CB'


for load_txt=1:20,
    str=['3phy' num2str(load_txt),'.txt'];
    [atom, AtNumber, name, res, ResNumber, x, y, z, irr1, irr2] = textread(str,'%s%d%s%s%d%f%f%f%f%f');
    namelist(:,load_txt) = name;
    Coord = [x y z];
    assignin('base', strcat('PDB',num2str(load_txt)), Coord);
end

save -ASCII namelist.txt namelist

clear x
x=1;
for PDBnum = 1:20,
    x=1;
    F(:,PDBnum) = strncmp(namelist(1:end,PDBnum),CA,2);
    [row,col] = size(namelist);
    for n=1:row,
        if(F(n,PDBnum) == 1);
            Residue(x,PDBnum) = namelist(n,PDBnum);
            for one=1,
                ResidueNumber(x,1) = ResNumber(n,1);
            end
            coor(x,1:3) = eval(strcat('PDB' ,num2str(PDBnum),'(n,1:3)'));
            x=x+1;
        else
        end
    end
    [row2,col2] = size(coor);
    coorT=coor';
    Dist = zeros(row2, row2);
    for m=1:row2,
        X = (coor(m,1) - coorT(1,1:end)).^2;
        Y = (coor(m,2) - coorT(2,1:end)).^2;
        Z = (coor(m,3) - coorT(3,1:end)).^2;
        Dist(m,1:end) = sqrt(X+Y+Z);
    end
    
    savePDB = ['PDBDist' num2str(PDBnum),'.txt'];
    save(savePDB, 'Dist', '-ASCII');
    clear Dist coor CoorT F A x;
end

for Dist1=1:20,
    str=['PDBDist' num2str(Dist1),'.txt'];
    load(str);
end


true = 0
false = 0
[row3,col3]=size(PDBDist1);
for n2=1:row3
    for m2=1:col3
        for PDBnum2=1:20
            B(1,PDBnum2) = eval(strcat('PDBDist',num2str(PDBnum2),'(n2,m2)'));
            if B(1,PDBnum2) <=7.5 & B(1,PDBnum2) ~= 0
                true = true + 1;
            else
            end
            if B(1,PDBnum2) > 7.5 & B(1,PDBnum2) ~= 0
                false = false + 1;
            end
        end
        if true >=false;
            avg = sum(B,2)/20;
            standardDev = std(B);
            upper = avg + standardDev;
            Averageall(n2,m2) = avg;
            PDBall(n2,m2) = standardDev;
        else
            PDBall(n2,m2) = 0;
            Averageall(n2,m2)=0;
        end
        false = 0;
        true = 0;
    end
end

save -ASCII upperlimitCBreal.txt PDBall
save -ASCII AverageallCBreal.txt Averageall

TriUp = triu(Averageall)
TriUpUp = triu(PDBall)

[row4,col4] = size(Averageall)



%for n3=1:row4,
%    f=1
%    x=1
%    if sum(TriUp(n3,:)) == 0
%        delete(1,1) = n3;
%        ResidueNumber(n3,1) = 0;
%%    end
%    if sum(TriUp(n3,:))~=0
%        ResidueNew(n3,1) = ResidueNumber(n3,1);
%    end
%    for m3=1:col4,
%        if TriUp(n3,x) ~= 0;
%%           Matching(n3,f) = x;
%           Avg(n3,f) = TriUp(n3,x);
%           upperRes(n3,f) = TriUpUp(n3,x);
%           x=x+1;
%           f=f+1;
%%%        else
%            x=x+1;
%        end
%    end
%end
            
            
