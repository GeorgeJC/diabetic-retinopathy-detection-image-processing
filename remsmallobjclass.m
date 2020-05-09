BW = imread('20_test5.tif');
BW2 = bwareaopen(BW, 80);
imshowpair(BW,BW2,'montage')
baseFileName = '20_test6.tif';
fullFileName = fullfile('C:\Users\george joseph\Documents\SEM-3\Image Processing\Project', baseFileName);
imwrite(BW2, fullFileName);