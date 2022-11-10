function Output=smoothing_Gaussian(sigma,name_image)

I=imread(name_image+".jpg");              %Leemos la imagen                          %Mostramos la imagen en la figura 1

ar=double(I(:,:,1));
s=size(I);
arc=ar*0;

sidex=ceil(6*sigma);

[col,fil] = meshgrid(-ceil(sidex/2):1:ceil(sidex/2),-ceil(sidex/2):1:ceil(sidex/2));

Gauss=(1/(2*pi*(sigma^2)))*exp(-((fil.^2)+(col.^2))/(2*(sigma^2)));

%x=fila
M=size(fil,1)-1;
N=size(col,1)-1;



for i = 1:size(I,1)-M
    for j =1:size(I,2)-N
        Temp = ar(i:i+M,j:j+M).*Gauss;
        Output(i,j)=sum(sum(Temp(:)));
    end
end


 Output = uint8(Output);        

end 