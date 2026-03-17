function I = linearFilter(I,F);
if(length(size(I))==3)
    I=rgb2gray(I);
end

[m,n] = size(I);
[k,l] = size(F);
K = (k-1)/2;
L = (l-1)/2;
J = I;