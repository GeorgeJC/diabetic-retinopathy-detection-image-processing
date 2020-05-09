BW=imread('20_test6.tif');
figure,imshow(BW)
BW2=bwmorph(BW,'thin');
figure,imshow(BW2)
baseFileName = '20_test7.tif';
fullFileName = fullfile('C:\Users\george joseph\Documents\SEM-3\Image Processing\Project', baseFileName);
imwrite(BW2, fullFileName);