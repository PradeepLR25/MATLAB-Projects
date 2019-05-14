Connect = yahoo

open = fetch(Connect,DOWSymbols(1,1),'open','Dec 31 10','Jan 01 09');   
close = fetch(Connect,DOWSymbols(1,1),'close','Jan 01 09', 'Dec 31 10');
openDJI = fetch(Connect,'^IXIC','open','Jan 01 09', 'Dec 31 10');
closeDJI = fetch(Connect,'^IXIC','close','Jan 01 09', 'Dec 31 10')
sizeOpen = size(open);
Combined = zeros(sizeOpen(:,1),3);
CombinedDJI=zeros(sizeOpen(:,1),3);
CombinedDJI(:,1) = openDJI(:,1);
CombinedDJI(:,2) = openDJI(:,2);
CombinedDJI(:,3) = closeDJI(:,2);
Combined(:,1) = open(:,1);
Combined(:,2) = open(:,2);
Combined(:,3) = close(:,2);
Combined = flipud(Combined);
LessThanThree = zeros(sizeOpen(:,1),12);

x=1
f=15
y=1
while Combined(f,1)< Combined(end,1)
    if Combined(x,2) > Combined(f,2)
        percent = (1-(Combined(f,2)/Combined(x,2)))*100;
        if percent >= 15
            LessThanThree(y,1:2)=Combined(x,1:2)
            LessThanThree(y,3)=Combined(f,3);
            LessThanThree(y,4) = -percent;
            z=x+1
            w=f+40
            percentDJI = (1-(CombinedDJI(f,2)/CombinedDJI(x,2)))*100;
            percentDJI2= (1-(CombinedDJI(w,3)/CombinedDJI(x,2)))*100;
            percent2 = (1-(Combined(w,3)/Combined(x,2)))*100;
            percent3 = (1-(Combined(f,2)/Combined(x,2)))*100;
            LessThanThree(y,5)=Combined(x,2);
            LessThanThree(y,6)=Combined(w,3);
            LessThanThree(y,7)= -percent2;
            LessThanThree(y,8)= percent3;
            LessThanThree(y,9:10) = CombinedDJI(x,2:3);
            LessThanThree(y,11) = -percentDJI;
            LessThanThree(y,12) = -percentDJI2;
            y=y+1;
            
        else
        end
    else 
    end
    x=x+1; 
    f=f+1;
end
        