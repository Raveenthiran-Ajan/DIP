I = imread('lena.jpg');
if length(size(I))==3
    I = rgb2gray(I);
end

I = imnoise(I,'gaussian');

P = edge(I,'prewitt');
S = edge(I,'sobel');
R = edge(I,'roberts');
C = edge(I,'canny');

subplot(2,3,1);imshow(I);hold on;title('Original Image');
subplot(2,3,2);imshow(P);hold on;title('Prewitt Filter');
subplot(2,3,3);imshow(S);hold on;title('Sobel Filter');
subplot(2,3,4);imshow(R);hold on;title('Roberts Filter');
subplot(2,3,5);imshow(C);title('Canny Filter');
