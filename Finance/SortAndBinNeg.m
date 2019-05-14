total = size(h)
h(total(1,1)+1,1:total(1,2))=0
p=1;
r=2;
o=1;
m=3;
n=4;
three=2;
b=4;
four=2;
five=2;
six=2;
seven=2;
eight=2;
ZeroToOneNeg(1:5,1:5) = zeros
ZeroToOneNegB(1:5, 1:5) = zeros
test=1

while r<=120
if h(o,p) == 0 && h(o,r) == 0
    p=p+4;
    r=r+4;
    test=test+1
    o=1;
elseif h(o,p) < 4
    ThreeToFour(three,1:b) = [s(o,p), s(o,r), s(o,m), s(o,n)]
    
    if h(o,r)<=0 && h(o,r)>-1 
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOneNeg(1,1) = ZeroToOneNeg(1,1)+1;
        else
            ZeroToOneNegB(1,1) = ZeroToOneNegB(1,1)+1;
        end
    elseif h(o,r)<=-1 && h(o,r)> -2
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOneNeg(2,1) = ZeroToOneNeg(1,1)+1;
        else
            ZeroToOneNegB(2,1) = ZeroToOneNegB(1,1)+1;
        end
    elseif h(o,r)<=-2 && h(o,r)> -3
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOneNeg(3,1) = ZeroToOneNeg(1,1)+1;
        else
            ZeroToOneNegB(3,1) = ZeroToOneNegB(1,1)+1;
        end
    elseif h(o,r)<=-3 && h(o,r)> -4
       if s(o,m)< 0 && s(o,n)<0
            ZeroToOneNeg(4,1) = ZeroToOneNeg(1,1)+1;
        else
            ZeroToOneNegB(4,1) = ZeroToOneNegB(1,1)+1;
        end
    elseif h(o,r)<=-4
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOneNeg(5,1) = ZeroToOneNeg(1,1)+1;
        else
            ZeroToOneNegB(5,1) = ZeroToOneNegB(1,1)+1;
        end
    end
    three=three+1;
    o=o+1;
elseif h(o,p) >= 4 && h(o,p) < 5
    FourToFive(four,1:b) = [s(o,p), s(o,r), s(o,m), s(o,n)]
    if h(o,r)<=0 && h(o,r)>-1 
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOneNeg(1,2) = ZeroToOneNeg(1,1)+1;
        else
            ZeroToOneNegB(1,2) = ZeroToOneNegB(1,1)+1;
        end
    elseif h(o,r)<=-1 && h(o,r)> -2
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOneNeg(2,2) = ZeroToOneNeg(1,1)+1;
        else
            ZeroToOneNegB(2,2) = ZeroToOneNegB(1,1)+1;
        end
    elseif h(o,r)<=-2 && h(o,r)> -3
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOneNeg(3,2) = ZeroToOneNeg(1,1)+1;
        else
            ZeroToOneNegB(3,2) = ZeroToOneNegB(1,1)+1;
        end
    elseif h(o,r)<=-3 && h(o,r)> -4
       if s(o,m)< 0 && s(o,n)<0
            ZeroToOneNeg(4,2) = ZeroToOneNeg(1,1)+1;
        else
            ZeroToOneNegB(4,2) = ZeroToOneNegB(1,1)+1;
        end
    elseif h(o,r)<=-4
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOneNeg(5,2) = ZeroToOneNeg(1,1)+1;
        else
            ZeroToOneNegB(5,2) = ZeroToOneNegB(1,1)+1;
        end
    end
    four = four+1;
    o=o+1;
elseif h(o,p) >= 5 && h(o,p) < 6
    FiveToSix(five,1:b) = [s(o,p), s(o,r), s(o,m), s(o,n)]
     if h(o,r)<=0 && h(o,r)>-1 
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOneNeg(1,3) = ZeroToOneNeg(1,1)+1;
        else
            ZeroToOneNegB(1,3) = ZeroToOneNegB(1,1)+1;
        end
    elseif h(o,r)<=-1 && h(o,r)> -2
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOneNeg(2,3) = ZeroToOneNeg(1,1)+1;
        else
            ZeroToOneNegB(2,3) = ZeroToOneNegB(1,1)+1;
        end
    elseif h(o,r)<=-2 && h(o,r)> -3
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOneNeg(3,3) = ZeroToOneNeg(1,1)+1;
        else
            ZeroToOneNegB(3,3) = ZeroToOneNegB(1,1)+1;
        end
    elseif h(o,r)<=-3 && h(o,r)> -4
       if s(o,m)< 0 && s(o,n)<0
            ZeroToOneNeg(4,3) = ZeroToOneNeg(1,1)+1;
        else
            ZeroToOneNegB(4,3) = ZeroToOneNegB(1,1)+1;
        end
    elseif h(o,r)<=-4
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOneNeg(5,3) = ZeroToOneNeg(1,1)+1;
        else
            ZeroToOneNegB(5,3) = ZeroToOneNegB(1,1)+1;
        end
    end
    five = five+1;
    o=o+1;
elseif h(o,p) >= 6 && h(o,p) < 7
    SixToSeven(six,1:b) = [s(o,p), s(o,r), s(o,m), s(o,n)]
    if h(o,r)<=0 && h(o,r)>-1 
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOneNeg(1,4) = ZeroToOneNeg(1,1)+1;
        else
            ZeroToOneNegB(1,4) = ZeroToOneNegB(1,1)+1;
        end
    elseif h(o,r)<=-1 && h(o,r)> -2
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOneNeg(2,4) = ZeroToOneNeg(1,1)+1;
        else
            ZeroToOneNegB(2,4) = ZeroToOneNegB(1,1)+1;
        end
    elseif h(o,r)<=-2 && h(o,r)> -3
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOneNeg(3,4) = ZeroToOneNeg(1,1)+1;
        else
            ZeroToOneNegB(3,4) = ZeroToOneNegB(1,1)+1;
        end
    elseif h(o,r)<=-3 && h(o,r)> -4
       if s(o,m)< 0 && s(o,n)<0
            ZeroToOneNeg(4,4) = ZeroToOneNeg(1,1)+1;
        else
            ZeroToOneNegB(4,4) = ZeroToOneNegB(1,1)+1;
        end
    elseif h(o,r)<=-4
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOneNeg(5,4) = ZeroToOneNeg(1,1)+1;
        else
            ZeroToOneNegB(5,4) = ZeroToOneNegB(1,1)+1;
        end
    end
    six = six+1;
    o=o+1;
elseif h(o,p) >= 7
    SevenAbove(seven,1:b) = [s(o,p), s(o,r), s(o,m), s(o,n)]
     if h(o,r)<=0 && h(o,r)>-1 
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOneNeg(1,5) = ZeroToOneNeg(1,1)+1;
        else
            ZeroToOneNegB(1,5) = ZeroToOneNegB(1,1)+1;
        end
    elseif h(o,r)<=-1 && h(o,r)> -2
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOneNeg(2,5) = ZeroToOneNeg(1,1)+1;
        else
            ZeroToOneNegB(2,5) = ZeroToOneNegB(1,1)+1;
        end
    elseif h(o,r)<=-2 && h(o,r)> -3
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOneNeg(3,5) = ZeroToOneNeg(1,1)+1;
        else
            ZeroToOneNegB(3,5) = ZeroToOneNegB(1,1)+1;
        end
    elseif h(o,r)<=-3 && h(o,r)> -4
       if s(o,m)< 0 && s(o,n)<0
            ZeroToOneNeg(4,5) = ZeroToOneNeg(1,1)+1;
        else
            ZeroToOneNegB(4,5) = ZeroToOneNegB(1,1)+1;
        end
    elseif h(o,r)<=-4
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOneNeg(5,5) = ZeroToOneNeg(1,1)+1;
        else
            ZeroToOneNegB(5,5) = ZeroToOneNegB(1,1)+1;
        end
    end
    seven = seven+1;
    o=o+1;
end
    
end