format long g
Connect = yahoo
DOWSymbols = importdata('DOWSymbols.txt')
open = fetch(Connect,DOWSymbols(1,1),'open','Dec 31 10','Jan 01 09');
close = fetch(Connect,DOWSymbols(1,1),'close','Dec 31 10', 'Jan 01 09');
high = fetch(Connect,DOWSymbols(1,1),'high','Dec 31 10', 'Jan 01 09');
openDJI = fetch(Connect,'^DJI','open','Dec 31 10', 'Jan 01 09');
closeDJI = fetch(Connect,'^DJI','close','Dec 31 10', 'Jan 01 09');
openSP = fetch(Connect,'^GSPC','open','Dec 31 10', 'Jan 01 09');
closeSP  = fetch(Connect,'^GSPC','close','Dec 31 10', 'Jan 01 09');
sizeDOW = size(DOWSymbols)
sizeOpen = size(open);

x=1;
y=2;
z=1;
w=1;
f=4;
l=1
for j=1:sizeDOW
    open = fetch(Connect,DOWSymbols(w,1),'open','Dec 31 10','Jan 01 09');
    close = fetch(Connect,DOWSymbols(w,1),'close','Dec 31 10', 'Jan 01 09');
    close1 = fetch(Connect,DOWSymbols(w,1),'high','Dec 31 10', 'Jan 01 09');
    Low1 = fetch(Connect,DOWSymbols(w,1),'low','Dec 31 10', 'Jan 01 09');
    for i=1:sizeOpen(1,1)
        if ((open(x,2)-close(x,2))/open(x,2))*100 > 3
            s(z,l:f) = [(((open(x,2)-close(x,2))/open(x,2))*100), (((close1(y,2)-open(y,2))/open(y,2))*100), (((closeDJI(x,2)-openDJI(x,2))/openDJI(x,2))*100), (((closeSP(x,2)-openSP(x,2))/openSP(x,2))*100)];
            h(z,l:f) = [(((open(x,2)-close(x,2))/open(x,2))*100), (((Low1(y,2)-open(y,2))/open(y,2))*100), (((closeDJI(x,2)-openDJI(x,2))/openDJI(x,2))*100), (((closeSP(x,2)-openSP(x,2))/openSP(x,2))*100)];
            z=z+1;
            x=x+1;
            y=y+1;
        else
            x=x+1;
            y=y+1;
            
        end
    end
    w=w+1;
    l=l+4;
    f=f+4;
    z=1;
    x=1;
    y=2;
end