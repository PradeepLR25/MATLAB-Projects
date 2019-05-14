format long
k1=1.26   				%rate constant of pG --> pB
k2=1.78  				%rate constant of pB--> pG
Conc = 0.0000750			%Concentration of sample (in Moles/Litre)
E=45500				%Extinction Coefficient
Acm = Conc*E 			%Absorbance per centimeter of the sample
Amm=Acm/10			%Absorbance per millimeter of the sample
mm=16					%absorbing pathlength in mm
numberofIterations=10		%number of points
axisX = [0:numberofIterations]'	%for plotting
pG=.56           	%pG concentration in Rel. absorbance units %determined by the rate constants spec.
pB=.44	%pB concentration in Rel. absorbance units %determined by the rate constants spec.
depth = mm/numberofIterations	%depth per iteration.  (the length of one iteration.)
depth1 = depth			%1st depth
depthDec = Amm/(numberofIterations/mm)	%Abs. decrease in the depth per %iteration
K=k1/k2				%Equilibrium rate constant
n=1
m=0

pB1 = [1:numberofIterations]		%Store pB values
pB1=pB1'
pB1(1,1)=pB				%first value
pG1 = [1:numberofIterations]		%Store pG values
pG1=pG1'
pG1(1,1)=pG				%first value
Adecrease = [1:numberofIterations]	%Store Abs. Decrease values.
Adecrease = Adecrease'
pG1(n,1) = .44				%starting relative concentration pG.
Adecrease(n,1) = pG1(n,1)*depthDec	%Abs. Per iteration 
while depth1<mm			%recursive calculation.
I = 10^(-Adecrease(n,1))	%Intensity Decrease.
k = I*K			%new eq. constant
n=n+1				
m=m+1
depth1 = depth + depth1	%New depth
pG1(n,1) = 1/(1+k);		%pG conc.
pB1(n,1) = 1-pG1(n,1);	%pB conc.
Adecrease(n,1) = Adecrease(m,1) + pG1(n,1)*depthDec;	%New Abs. per %iteration
end
plot (axisX, pB1)  %plot of concentration vs. depth
figure
plot (axisX, Adecrease) %plot of intensity vs. depth
