I = imread('20_test3.tif');
bw = im2bw(I,0.26);
bw1=bw;
figure,imshow(bw1 ,'InitialMagnification', 'fit')
title('Output of im2bw')
baseFileName = '20_test4.tif';
fullFileName = fullfile('C:\Users\george joseph\Documents\SEM-3\Image Processing\Project', baseFileName);
imwrite(bw1, fullFileName);