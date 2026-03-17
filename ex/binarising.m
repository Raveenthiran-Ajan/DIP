function I = binarising(I,t)
if length(size(I)) == 3
    I = rgb2gray(I);
end
[r, c] = size(I);
for i = 1:r
    for j = 1:c
        a=I(i,j);
        if(a<t)
            a=0;
        else
            a=255;
        end
        I(i,j)=a;
    end
end
