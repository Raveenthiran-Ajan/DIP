function I = alphaBlend(IFG,IBG,a)
if length(size(IFG))==3
    IFG = rgb2gray(IFG);
end
if length(size(IBG))==3
    IBG = rgb2gray(IBG);
end
[r,c] = size(IBG); %size(IBG)=size(IFG)
I=IBG;

for i=1:r
    for j=1:c
        I(i,j)=a*IBG(i,j)+(1-a)*IFG(i,j);
    end
end
