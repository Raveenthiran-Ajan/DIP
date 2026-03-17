I = imread('lena.jpg');
if length(size(I))==3
    I = rgb2gray(I);
end

I = imnoise(I,'gaussian');

H1 = fspecial('average');
H2 = fspecial('gauss');
H3 = fspecial('laplacian');
H4 = fspecial('unsharp');

Box = imfilter(I,H1);
Gauss = imfilter(I,H2);
MexHat = imfilter(I,H3);
USM = imfilter(I,H4);

subplot(2,3,1);imshow(I);hold on;title('Original Image');
subplot(2,3,2);imshow(Box);hold on;title('Box Filter');
subplot(2,3,3);imshow(Gauss);hold on;title('Gauss Filter');
subplot(2,3,4);imshow(MexHat);hold on;title('MexHat Filter');
subplot(2,3,5);imshow(USM);title('USM Filter');