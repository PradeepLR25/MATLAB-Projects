format long

k1=.5
%rate constant of pG --> pB
k2=.616
%rate constant of pB--> pG
Conc = .0001
%Concentration of sample (in Moles/Litre)
E=45500
%Extinction Coefficient
Acm = Conc*E
%Absorbance/centimeter of the sample
Amm=Acm/10
%Absorbance/millimeter of the sample
mm=16
%thickness of the tube
numberofIterations=1600
%number of points
axisX = [0:numberofIterations]'
%for plotting
pG=.53
%pG concentration in Rel. absorbance units determined by the rate constants/
%spec.
pB=.47
%pB concentration in Rel. absorbance units determined by the rate constants/
%spec.
depth = mm/numberofIterations
%depth per iteration.  the length of one iteration.
depth1 = depth
%1st depth
depthDec = Amm/(numberofIterations/mm)
%Decrease in the depth per iteration

K=k2/k1
%equilibrium rate constant
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
