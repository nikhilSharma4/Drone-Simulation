clc;
clear all;
img1 = imread('work2noisyimage.tif');
img2 = imread('work21DBAMF_OutImg.tif');
img3 = imread('work22mdbutm_OutImg.tif');
img4 = imread('work23fsbmmf_OutImg.tif');
img5 = imread('work24RSIF_OutImg.tif');
img6 = imread('work25ASWMF_OutImg.tif');
img7 = imread('work26TVWA.tif');
img8 = imread('work27DAMF_OutImg.tif');
img9 = imread('work28PA.tif');



imwrite(img1,'1work2noisyimage.png');
imwrite(img2,'1work21DBAMF_OutImg.png');
imwrite(img3,'1work22mdbutm_OutImg.png');
imwrite(img4,'1work23fsbmmf_OutImg.png');
imwrite(img5,'1work24RSIF_OutImg.png');
imwrite(img6,'1work25ASWMF_OutImg.png');
imwrite(img7,'1work26TVWA.png');
imwrite(img8,'1work27DAMF_OutImg.png');
imwrite(img9,'1work28PA.png');
