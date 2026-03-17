I = imread('coins.png');
if length(size(I)) == 3
    I = rgb2gray(I);
end

bw = imbinarize(I);
se = strel('disk',7);

dilated = imdilate(bw,se);
eroded = imerode(bw,se);
opened = imopen(bw,se); %removes small objects from the foreground
closed = imclose(bw,se); % fills small gaps and holes in objects

figure;
subplot(2,3,1);imshow(I);title('original');
subplot(2,3,2);imshow(bw);title('Binarized');
subplot(2,3,3);imshow(dilated);title('Dilated');
subplot(2,3,4);imshow(eroded);title('Eroded');
subplot(2,3,5);imshow(opened);title('Opened');
subplot(2,3,6);imshow(closed);title('Closed');