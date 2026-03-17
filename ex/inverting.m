function I = inverting(I)
if length(size(I)) == 3
    I = rgb2gray(I);
end
[r, c] = size(I);
amax = 255;
for i = 1:r
    for j = 1:c
        I(i,j) =amax -I(i,j);
    end
end