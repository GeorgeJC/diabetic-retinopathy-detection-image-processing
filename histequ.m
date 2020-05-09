I = imread('20_test.tif');
figure
subplot(1,2,1)
imshow(I)
subplot(1,2,2)
imhist(I,64)
J = histeq(I);
figure
subplot(1,2,1)
imshow(J)
subplot(1,2,2)
imhist(J,64)
baseFileName = '20_test1.tif'; % Whatever....
fullFileName = fullfile('C:\Users\george joseph\Documents\SEM-3\Image Processing\Project', baseFileName);
imwrite(J, fullFileName);