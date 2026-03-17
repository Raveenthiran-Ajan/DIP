function I = autoContrast(I)
if length(size(I))== 3
    I= rgb2gray(I);
end
[r,c] = size(I);
amin = 0;
amax = 255;
alow = min(min(I));
ahigh = max(max(I));

for i=1:r
    for j=1:c
        a=I(i,j);
        I(i,j)=amin+(a-alow)*((amax-amin)/(ahigh-alow));
    end
end