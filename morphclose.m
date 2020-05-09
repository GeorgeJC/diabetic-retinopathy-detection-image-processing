originalBW = imread('20_test4.tif');
see = strel('disk',2);
closeBW = imclose(originalBW,see);
se=closeBW;
figure, imshow(se)
baseFileName = '20_test5.tif';
fullFileName = fullfile('C:\Users\george joseph\Documents\SEM-3\Image Processing\Project', baseFileName);
imwrite(closeBW, fullFileName);