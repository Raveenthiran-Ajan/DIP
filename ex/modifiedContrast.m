function I=modifiedContrast(I)
if length(size(I)) == 3
    I = rgb2gray(I);
end
[m,n]=size(I);
k=256;

amin=0;
amax=k-1;

qlow=0.05;
qhigh=qlow;

h=histogram(I);
H=cumHist(h);

alow=min(find(H>=m*n*qlow));
ahigh=max(find(H<=m*n*(1-qhigh)));

for i=1:m
    for j=1:n
        a=I(i,j);
        if(a<=alow)
            I(i,j)=amin;
        else if(a>=ahigh)
                I(i,j)=amax;
            else
                I(i,j)=amin+(a-alow)*((amax-amin)/(ahigh-alow));
            end
        end
    end
end