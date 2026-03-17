I = imread('bat.jpg');
if length(size(I)) == 3
    I = rgb2gray(I);
end

bw = imbinarize(I);
se = strel('disk',7);
bwhat = imerode(bw,se);
boundary = ~bw-bwhat;

figure;imshow(boundary);title('Boundary Detection');