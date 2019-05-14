format long

k1=.5
k2=1.84
Conc = .0001
E=45500
Acm = Conc*E

Amm=Acm/10
mm=16
numberofIterations=400
axisX = [0:numberofIterations]'
pG=.53
pB=.47
depth = mm/numberofIterations

depth1 = depth

depthDec = Amm/(numberofIterations/mm)

K=k2/k1

n=1
m=0

pB1 = [1:numberofIterations]
pB1=pB1'
pB1(1,1)=pB

pG1 = [1:numberofIterations]
pG1=pG1'
pG1(1,1)=pG


Adecrease = [1:numberofIterations]
Adecrease = Adecrease'
pG1(n,1) = .53
Adecrease(n,1) = pG1(n,1)*depthDec
while depth1<mm




I = 10^(-Adecrease(n,1))

k = I*K

n=n+1
m=m+1
depth1 = depth + depth1

pG1(n,1) = 1/(1+k);

pB1(n,1) = 1-pG1(n,1);

Adecrease(n,1) = Adecrease(m,1) + pG1(n,1)*depthDec;

end

plot (axisX, pB1)
figure
plot (axisX, Adecrease)