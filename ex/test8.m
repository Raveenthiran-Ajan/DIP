IBG = imread('flowerbg.png');
IFG = imread('');
alpha = 0.6;
I = alphaBlend(IFG,IBG,alpha);
subplot(1,3,1);imshow(IFG);hold on;
subplot(1,3,1);imshow(IBG);hold on;
subplot(1,3,1);imshow(I);
