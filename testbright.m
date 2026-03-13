I = imread('leena.png');
h1 = imhist(I);
J = brightness(I,30);
h2 = imhist(J);

subplot(2,2,1);imshow(I);hold on;title('Original Image');
subplot(2,2,2);bar(h1);hold on;title('Original Histogram');
subplot(2,2,3);imshow(J);hold on;title('Brightness Increased');
subplot(2,2,4);bar(h2);title('New Histogram');