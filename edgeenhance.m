
clc;
clear all;
close all;

%Read Input Retina Image
inImg = imread('20_test1.tif');
dim = ndims(inImg);
if(dim == 3)
  %Input is a color image
   inImg = rgb2gray(inImg);
end

%Extract Blood Vessels
Threshold = 10;
bloodVessels = VesselExtract3(inImg, Threshold);

%Output Blood Vessels image

figure;
subplot(121);imshow(inImg);title('Input Image');
subplot(122);imshow(bloodVessels);title('Extracted Blood Vessels');
baseFileName = '20_test2.tif'; % Whatever....
fullFileName = fullfile('C:\Users\george joseph\Documents\SEM-3\Image Processing\Project', baseFileName);
imwrite(bloodVessels, fullFileName);