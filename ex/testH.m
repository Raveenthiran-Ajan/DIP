I = imread('cameraman.jpg');
h = histogram(I);
H = cumtlist(h);
subplot(3,1,1);imshow(I);hold on;subplot(3,1,2);
bar(h);hold on;subplot(3,1,3);bar(H);