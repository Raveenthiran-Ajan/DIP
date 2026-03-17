I = imread('lena.jpg');
if length(size(I))==3
    I = rgb2gray(I);
end
J = imnoise(I,'gaussian');
A = fspecial('average',3);
K = imfilter(J,A);
subplot(1,3,1);imshow(I);hold on;
subplot(1,3,2);imshow(J);hold on;
subplot(1,3,3);imshow(K);