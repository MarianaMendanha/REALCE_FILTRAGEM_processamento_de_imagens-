clear all;
close all;
clc;

  % Setup na imagem.
img0 = imread('C:\Users\rose_\Desktop\MARI\9_NONO\IPI\TRABALHOS\car.png');
img1 = imread('C:\Users\rose_\Desktop\MARI\9_NONO\IPI\TRABALHOS\crowd.png');
img2 = imread('C:\Users\rose_\Desktop\MARI\9_NONO\IPI\TRABALHOS\university.png');

% REALCE COM HISTOGRAMA EQUALIZADO:

  % Display da imagem 1 equalizada.
Himg0 = histeq(img0);
subplot(3, 3, 1);
imshow(Himg0);
title('Imagem 1 com histeq', 'FontSize', 15);

  % Display de Histograma 1.
subplot(3, 3, 4);
imhist(img0,256);
title('Histograma Imagem 1', 'FontSize', 15);

  % Display de Histograma 1 Eq.
subplot(3, 3, 5);
imhist(Himg0,256);
title('Histograma Equalizado', 'FontSize', 15);


  % Display da imagem 2 equalizada.
Himg1 = histeq(img1);
subplot(3,3,2);
imshow(Himg1);
title('Imagem 2 com histeq', 'FontSize', 15);
  % Display de Histograma 2.
##subplot(3,2,4);
##imhist(Himg1,64);
##title('Histograma 2', 'FontSize', 15);

  % Display da imagem 3 equalizada.
Himg2 = histeq(img2);
subplot(3,3,3);
imshow(Himg2);
title('Imagem 3 com histeq', 'FontSize', 15);
  % Display de Histograma 3.
##subplot(3,2,6);
##imhist(Himg2,64);
##title('Histograma 3', 'FontSize', 15);

  % CÁLCULO DOS CDF'S DA IMAGEM 1:
hist0 = imhist(img0,256);
Hhist0 = imhist(Himg0,256);
cdf0 = cumsum(hist0) / numel(img0);
cdf1 = cumsum(Hhist0) / numel(Himg0);

  % Plotagem da Função de distribuição acumulada IMG1.  
subplot(3,3,7);
cdf0=cdf0';
plot(0:255,cdf0);
xlabel ("r");
ylabel ("CDF");
title ("CDF Imagem 1");

  % Plotagem da Função de distribuição acumulada IMG1 equalizada.
subplot(3,3,8);
cdf1=cdf1';
plot(0:255,cdf1);
xlabel ("r");
ylabel ("CDF");
title ("CDF Imagem 1 EQ");


