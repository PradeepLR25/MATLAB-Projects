Connect = yahoo
DOWSymbols = importdata('DOWSymbols.txt')
open = fetch(Connect,DOWSymbols(1,1),'open','Dec 31 10','Jan 01 09');
close = fetch(Connect,DOWSymbols(1,1),'close','Jan 01 09', 'Dec 31 10');
openDJI = fetch(Connect,'^DJI','open','Jan 01 09', 'May 31 10');
closeDJI = fetch(Connect,'^DJI','close','Jan 01 09', 'May 31 10');

sizeOpen = size(open);

x=1;
y=1;

for i=1:10  %Goes through days 1-10 before buy
    for j = 1:50 % goes through total days after buy
        for k = 1:sizeOpen(end,1) % Runs through all the dates.
            buy=k+i;
            sell=buy+j;
            if buy < sizeOpen(end,1) && sell < sizeOpen(end,1)
                percentDecrease = ((close(buy,2)/open(k,2))-1)*100;
                if percentDecrease < -5
                    percentIncrease = ((close(sell,2)/close(buy,2))-1)*100;
                   
                    if percentIncrease > 5 || percentIncrease < -2
                        s = ['Combine_' num2str(i) '_' num2str(j) '(x,1:3)' ' = [open(x,1), percentDecrease, percentIncrease]'];
                        eval(s);
                        x=x+1;
                        
                        %{
                        else if percentIncrease < -2
                            s = ['CombineD_' num2str(i) '_' num2str(j) '(y,1:3)' ' = [open(x,1), percentDecrease, percentIncrease]'];
                            eval(s);
                            y=y+1;
                    end
                        %}
                                               
                    end
                else
                    
                end
            else
                
                
            end
        end
        y=1;
        x=1;
    end
end


