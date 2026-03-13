function I = brightness(I,b)

if length(size(I)) == 3
    I = rgb2gray(I);
end
[r,c] = size(I);

for i = 1:r
    for j = 1:c
        a = I(i,j);
        a = a + b;

        if a > 255
            a = 255;
        end

        if a < 0
            a = 0;
        end

        I(i,j) = a;
    end
end
end