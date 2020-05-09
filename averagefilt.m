I=imread('20_test2.tif');
Kaverage = filter2(fspecial('average',2),I)/255;
figure
imshow(Kaverage)
baseFileName = '20_test3.tif'; % Whatever....
fullFileName = fullfile('C:\Users\george joseph\Documents\SEM-3\Image Processing\Project', baseFileName);
imwrite(Kaverage, fullFileName);