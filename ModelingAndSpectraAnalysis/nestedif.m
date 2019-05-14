format long

A = importdata('FA560S01.ASC', ' ');

alltime = A(1,:);

wave = A(:,1);

wave(1,:) = [];

A(:,1) = [];

datawithtime = A;

A(1,:) = [];

alltime(:,1) = [];

logtime = log(alltime);

increment = (logtime(1,end) - logtime(1,1))/30 ;

incSize = logtime;

[x,y] = size(incSize);

n=1;

m=2;

z=1;

B(:,z)= datawithtime(:,1);
z=2
b=logtime(:,1)+increment;

while m<y
    if logtime(1,n)<b 
        diffOne = (logtime(1,n)) - b;
    else
        n=n+1;
    end
    if b<logtime(1,m)
        diffTwo = (logtime(1,m)) - b;
        if abs(diffOne)<abs(diffTwo) 
            B(:,z) = datawithtime(:,n);
            b = b+increment;
            z=z+1;
        else 
            B(:,z) = datawithtime(:,m);
            b = b+increment;
            z=z+1;
        end
        
    else
        m=m+1;
        
        
    end   
end

seltime = B(1,:);
B(1,:) = [];

[u1,s1,v1] = svd(B);

U5col = u1(:,1:5);
V5col = v1(:,1:5);

singular = diag(s1);

[u,v]=size(singular);

rank = (1:u);
rank = rank';
plot (rank, singular)
hgsave ('singularplot')

u1s1 = U5col(:,1)*singular(1,1)
u2s2 = U5col(:,2)*singular(2,1)
u3s3 = U5col(:,3)*singular(3,1)
u4s4 = U5col(:,4)*singular(4,1)

v1s1 = V5col(:,1)*singular(1,1)
v2s2 = V5col(:,2)*singular(2,1)
v3s3 = V5col(:,3)*singular(3,1)
v4s4 = V5col(:,4)*singular(4,1)

figure 
plot (wave, u1s1, wave, u2s2, wave, u3s3, wave, u4s4)
hgsave ('basis1_5')

figure
plot (seltime, v1s1, seltime, v2s2, seltime, v3s3, seltime, v4s4)
hgsave ('indtime')
U1S1V1 = U5col(:,1)*singular(1,1)*V5col(:,1)';
U2S2V2 = U5col(:,2)*singular(2,1)*V5col(:,2)';
U12S12V12 = U1S1V1+U2S2V2;
figure
plot (wave, U1S1V1)
hgsave ('U1S1V1')
figure
plot (wave, U2S2V2)
hgsave ('U2S2V2')
figure
plot (wave, U12S12V12)
hgsave ('U12S12V12')


U3S3V3 = U5col(:,3)*singular(3,1)*V5col(:,3)';
U4S4V4 = U5col(:,4)*singular(4,1)*V5col(:,4)';

U34S34V34 = U3S3V3+U4S4V4;

figure
plot (wave, U3S3V3)
hgsave ('U3S3V3')
figure
plot (wave, U4S4V4)
hgsave ('U4S4V4')
figure
plot (wave, U34S34V34)
hgsave ('U34S34V34')




