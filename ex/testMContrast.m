I = imread('lena.jpg');
J = modifiedContrast(I);
h1 = histogram(I);
h2 = histogram(J);
subplot(2, 2, 1); imshow(I); hold on;
subplot(2, 2, 2);imshow(J);hold on;
subplot(2, 2, 3);bar(h1);hold on;
subplot(2, 2, 4); bar(h2);