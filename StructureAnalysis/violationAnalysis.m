[assign, resid, Resid1, and, name, CA1, resid, Resid2, and, name, CA2, D, Dminus, Dplus] = textread('unambigbackup.tbl','%s%s%d%s%s%s%s%d%s%s%s%05.2f%05.2f%05.2f')

Dlow = D-Dminus
Dhigh= D+Dplus

[atom, AtNumber, name, res, ResNumber, x, y, z, irr1, irr2, chain] = textread('pBBB_saxs_9.pdb','%s%d%s%s%d%f%f%f%f%f%s','headerlines',450)
CA2(1:end,1)=name(2,1)
CA1(1:end,1)=name(19,1)
good=0;
bad=0;
%a=1
b=1;
c=1;
d=1;

for a=1:275
    while ((ResNumber(b,1)==Resid1(a,1)) + (strncmp(CA1(a,1),name(b,1),2)))~=2
        b=b+1;
    end
    while ((ResNumber(d,1)==Resid2(c,1)) + (strncmp(CA2(c,1),name(d,1),2)))~=2
        d=d+1;
    end
    %if Resid1(a,1)==ResNumber(b,1) && strncmp(CA1(a,1),name(b,1),2)
    %if Resid2(c,1)==ResNumber(d,1) && strncmp(CA2(c,1),name(d,1),2)
    X1(a,1) = (x(d,1) - x(b,1)).^2;
    Y2(a,1) = (y(d,1) - y(b,1)).^2;
    Z3(a,1) = (z(d,1) - z(b,1)).^2;
    Dist(a,1) = sqrt(X1(a,1)+Y2(a,1)+Z3(a,1));
    if (Dist(a,1)>=(Dlow(a,1)-0.5) && Dist(a,1)<=(Dhigh(a,1)+0.5))
        good=good+1;
    else
        bad=bad+1;
    end
    %    else
    % d=d+1;
    %end
    %end
    b=1;
    c=c+1;
    d=1;
    
end