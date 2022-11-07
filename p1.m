clf
clc
clear all
%format long

%PASO 1
%pkg load image                       %Cargamos la libreria que nos ayudara a procesar la imagen
I=imread('imagen.jpg');              %Leemos la imagen
figure
imshow(I);                           %Mostramos la imagen en la figura 1

%PASO 2
%figure 2                             %En la figura 2
%imhist(I)                            %Mostramos el histograma de la imagen original 'I'
ar=double(I(:,:,1));
s=size(I);
arc=ar*0;

sigma=1

sidex=ceil(6*sigma)

[col,fil] = meshgrid(-ceil(sidex/2):1:ceil(sidex/2),-ceil(sidex/2):1:ceil(sidex/2))

Gauss=(1/(2*pi*(sigma^2)))*exp(-((fil.^2)+(col.^2))/(2*(sigma^2)))

%x=fila
M=size(fil,1)-1
N=size(col,1)-1



for i = 1:size(I,1)-M
    for j =1:size(I,2)-N
        Temp = ar(i:i+M,j:j+M).*Gauss;
        Output(i,j)=sum(sum(Temp(:)));
    end
end

Output = uint8(Output);
figure,imshow(Output);