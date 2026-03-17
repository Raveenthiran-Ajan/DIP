I = imread('lena.jpg');
if length(size(I))==3
    I = rgb2gray(I);
end
%I = imnoise(I,'gaussian');
%I = imnoise(I,'salt & pepper');


H = @(x)min(x(:));
Jmin = nlfilter(I,[3,3],H);

H = @(x)max(x(:));
Jmax = nlfilter(I,[3,3],H);

H = @(x)median(x(:));
Jmedian = nlfilter(I,[3,3],H);

subplot(2,2,1);imshow(I);hold on;title('Original Image');
subplot(2,2,2);imshow(Jmin);hold on;title('Minimum Filter');
subplot(2,2,3);imshow(Jmax);hold on;title('Maximum Filter');
subplot(2,2,4);imshow(Jmedian);title('Median Filter');