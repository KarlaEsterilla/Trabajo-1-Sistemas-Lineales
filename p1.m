clf
clc
clear all
close all

%format long

%PASO 1
%pkg load image                       %Cargamos la libreria que nos ayudara a procesar la imagen







figure('Name','Imagen 1','color','none');
subplot(1,3,1)
imshow("imagen.jpg");
title('Imagen original','Color','white')
subplot(1,3,2)
imshow(smoothing_Gaussian(1,"imagen"));
title('Smoothing sigma = 1','Color','white')
subplot(1,3,3)
imshow(smoothing_Gaussian(2,"imagen"));
title('Smoothing sigma = 2','Color','white')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure('Name','Imagen 2','color','white');
subplot(1,3,1)
imshow("imagen2.jpg");
title('Imagen original')
subplot(1,3,2)
imshow(smoothing_Gaussian(2,"imagen2"));
title('Smoothing sigma = 2')
subplot(1,3,3)
imshow(smoothing_Gaussian(3,"imagen2"));
title('Smoothing sigma = 3')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure('Name','Imagen 3','color','white');
subplot(1,3,1)
imshow("imagen3.jpg");
title('Imagen original')
subplot(1,3,2)
imshow(smoothing_Gaussian(3.456,"imagen3"));
title('Smoothing sigma = 3.456')
subplot(1,3,3)
imshow(smoothing_Gaussian(5.000455,"imagen3"));
title(' sigma = 5.000455')
