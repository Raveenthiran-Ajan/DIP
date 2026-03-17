function I = linearFilter(I,F)
% F - filter of size (2K+1)(2L+1)
if length(size(I))==3
    I = rgb2gray(I);
end

I = double(I);
[M,N] = size(I);
[k,l] = size(F);

K = (k-1)/2;
L = (l-1)/2;

J = I; % copy of original image

for x = (K+1) : (M-K)
    for y = (L+1) : (N-L)
        S = 0;
        for i = -K:K
            for j = -L:L
                S = S + J(x+i, y+j) * F(K+i+1, L+j+1);
            end
        end
        I(x,y) = S;
    end
end

I = uint8(I); % convert back to image format