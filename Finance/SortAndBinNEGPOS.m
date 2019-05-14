total = size(s)
s(total(1,1)+1,1:total(1,2))=0
p=1;
r=2;
m=3;
n=4;
o=1;
three=2;
b=4;
four=2;
five=2;
six=2;
seven=2;
eight=2;
ZeroToOne(1:5,1:5) = zeros
ZeroToOneB(1:5, 1:5) = zeros
test=1

while r<=120
if s(o,p) == 0 && s(o,r) == 0
    p=p+4;
    r=r+4;
    m=m+3;
    n=n+4;
    test=test+1
    o=1;
elseif s(o,p) < 4
    ThreeToFour(three,1:b) = [s(o,p), s(o,r), s(o,m), s(o,n)]
    
    if s(o,r)>=0 && s(o,r)<1 
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOne(1,1) = ZeroToOne(1,1)+1;
        else
            ZeroToOneB(1,1) = ZeroToOneB(1,1)+1;
        end
    elseif s(o,r)>=1 && s(o,r)<2
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOne(2,1) = ZeroToOne(2,1)+1;
        else
            ZeroToOneB(2,1) = ZeroToOneB(2,1)+1;
        end
    elseif s(o,r)>=2 && s(o,r)<3
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOne(3,1) = ZeroToOne(3,1)+1;
        else
            ZeroToOneB(2,1) = ZeroToOneB(2,1)+1;
        end
    elseif s(o,r)>=3 && s(o,r)<4
        if s(o,m)< 0 && s(o,n)<0   
            ZeroToOne(4,1) = ZeroToOne(4,1)+1;
        else
            ZeroToOneB(4,1) = ZeroToOneB(4,1)+1;
        end
    elseif s(o,r)>=4
        if s(o,m)< 0 && s(o,n)<0 
            ZeroToOne(5,1) = ZeroToOne(5,1)+1;
        else
            ZeroToOneB(5,1) = ZeroToOneB(5,1)+1;
        end
    end
    three=three+1;
    o=o+1;
elseif s(o,p) >= 4 && s(o,p) < 5
    FourToFive(four,1:b) = [s(o,p), s(o,r), s(o,m), s(o,n)]
   if s(o,r)>=0 && s(o,r)<1 
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOne(1,2) = ZeroToOne(1,1)+1;
        else
            ZeroToOneB(1,2) = ZeroToOneB(1,1)+1;
        end
    elseif s(o,r)>=1 && s(o,r)<2
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOne(2,2) = ZeroToOne(2,2)+1;
        else
            ZeroToOneB(2,2) = ZeroToOneB(2,2)+1;
        end
    elseif s(o,r)>=2 && s(o,r)<3
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOne(3,2) = ZeroToOne(3,2)+1;
        else
            ZeroToOneB(2,2) = ZeroToOneB(2,2)+1;
        end
    elseif s(o,r)>=3 && s(o,r)<4
        if s(o,m)< 0 && s(o,n)<0   
            ZeroToOne(4,2) = ZeroToOne(4,2)+1;
        else
            ZeroToOneB(4,2) = ZeroToOneB(4,2)+1;
        end
    elseif s(o,r)>=4
        if s(o,m)< 0 && s(o,n)<0 
            ZeroToOne(5,2) = ZeroToOne(5,2)+1;
        else
            ZeroToOneB(5,2) = ZeroToOneB(5,2)+1;
        end
   end
    four = four+1;
    o=o+1;
elseif s(o,p) >= 5 && s(o,p) < 6
    FiveToSix(five,1:b) = [s(o,p), s(o,r), s(o,m), s(o,n)]
    if s(o,r)>=0 && s(o,r)<1 
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOne(1,3) = ZeroToOne(1,3)+1;
        else
            ZeroToOneB(1,3) = ZeroToOneB(1,3)+1;
        end
    elseif s(o,r)>=1 && s(o,r)<2
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOne(2,3) = ZeroToOne(2,3)+1;
        else
            ZeroToOneB(2,3) = ZeroToOneB(2,3)+1;
        end
    elseif s(o,r)>=2 && s(o,r)<3
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOne(3,3) = ZeroToOne(3,3)+1;
        else
            ZeroToOneB(2,3) = ZeroToOneB(2,3)+1;
        end
    elseif s(o,r)>=3 && s(o,r)<4
        if s(o,m)< 0 && s(o,n)<0   
            ZeroToOne(4,3) = ZeroToOne(4,3)+1;
        else
            ZeroToOneB(4,3) = ZeroToOneB(4,3)+1;
        end
    elseif s(o,r)>=4
        if s(o,m)< 0 && s(o,n)<0 
            ZeroToOne(5,3) = ZeroToOne(5,3)+1;
        else
            ZeroToOneB(5,3) = ZeroToOneB(5,3)+1;
        end
    end
    five = five+1;
    o=o+1;
elseif s(o,p) >= 6 && s(o,p) < 7
    SixToSeven(six,1:b) = [s(o,p), s(o,r), s(o,m), s(o,n)]
    if s(o,r)>=0 && s(o,r)<1 
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOne(1,4) = ZeroToOne(1,4)+1;
        else
            ZeroToOneB(1,4) = ZeroToOneB(1,4)+1;
        end
    elseif s(o,r)>=1 && s(o,r)<2
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOne(2,4) = ZeroToOne(2,4)+1;
        else
            ZeroToOneB(2,4) = ZeroToOneB(2,4)+1;
        end
    elseif s(o,r)>=2 && s(o,r)<3
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOne(3,4) = ZeroToOne(3,4)+1;
        else
            ZeroToOneB(2,4) = ZeroToOneB(2,4)+1;
        end
    elseif s(o,r)>=3 && s(o,r)<4
        if s(o,m)< 0 && s(o,n)<0   
            ZeroToOne(4,4) = ZeroToOne(4,4)+1;
        else
            ZeroToOneB(4,4) = ZeroToOneB(4,4)+1;
        end
    elseif s(o,r)>=4
        if s(o,m)< 0 && s(o,n)<0 
            ZeroToOne(5,4) = ZeroToOne(5,4)+1;
        else
            ZeroToOneB(5,4) = ZeroToOneB(5,4)+1;
        end
    end
    six = six+1;
    o=o+1;
elseif s(o,p) >= 7
    SevenAbove(seven,1:b) = [s(o,p), s(o,r), s(o,m), s(o,n)]
   if s(o,r)>=0 && s(o,r)<1 
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOne(1,5) = ZeroToOne(1,5)+1;
        else
            ZeroToOneB(1,5) = ZeroToOneB(1,5)+1;
        end
    elseif s(o,r)>=1 && s(o,r)<2
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOne(2,5) = ZeroToOne(2,5)+1;
        else
            ZeroToOneB(2,5) = ZeroToOneB(2,5)+1;
        end
    elseif s(o,r)>=2 && s(o,r)<3
        if s(o,m)< 0 && s(o,n)<0
            ZeroToOne(3,5) = ZeroToOne(3,5)+1;
        else
            ZeroToOneB(2,5) = ZeroToOneB(2,5)+1;
        end
    elseif s(o,r)>=3 && s(o,r)<4
        if s(o,m)< 0 && s(o,n)<0   
            ZeroToOne(4,5) = ZeroToOne(4,5)+1;
        else
            ZeroToOneB(4,5) = ZeroToOneB(4,5)+1;
        end
    elseif s(o,r)>=4
        if s(o,m)< 0 && s(o,n)<0 
            ZeroToOne(5,5) = ZeroToOne(5,5)+1;
        else
            ZeroToOneB(5,5) = ZeroToOneB(5,5)+1;
        end
   end
    seven = seven+1;
    o=o+1;
end
    
end