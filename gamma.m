clear all;
close all;
clc;

  % Setup na imagem.
img0 = imread('C:\Users\rose_\Desktop\MARI\9_NONO\IPI\TRABALHOS\car.png');
img1 = imread('C:\Users\rose_\Desktop\MARI\9_NONO\IPI\TRABALHOS\crowd.png');
img2 = imread('C:\Users\rose_\Desktop\MARI\9_NONO\IPI\TRABALHOS\university.png');

% REALCE COM CORREÇÃO GAMMA
  % TESTES COM VALORES DE GAMMA
j=1.2;
for i = 1:3
  Gimg0 = imadjust(img0,[],[],j);    
  subplot(3, 3, i);
  imshow(Gimg0);
  title(j, 'FontSize', 10);
  j=j+0.2;
endfor 
j=0.2;
for i = 4:6
  Gimg1 = imadjust(img1,[],[],j);    
  subplot(3, 3, i);
  imshow(Gimg1);
  title(j, 'FontSize', 10);
  j=j+0.1;
endfor 
j=0.2;
for i = 7:9
  Gimg2 = imadjust(img2,[],[],j);    
  subplot(3, 3, i);
  imshow(Gimg2);
  title(j, 'FontSize', 10);
  j=j+0.1;
endfor 

% DISPLAY DOS MELHORES RESULTADOS OBTIDOS
  % Imagem 1 com gamma 1.4.
figure
Gimg0 = imadjust(img0,[],[],1.4);    
subplot(1, 3, 1);
imshow(Gimg0);
title('Imagem 1 gamma(1.4)', 'FontSize', 15);
  % Imagem 2 com gamma 0.3.
Gimg1 = imadjust(img1,[],[],0.3);    
subplot(1, 3, 2);
imshow(Gimg1);
title('Imagem 2 gamma(0.3)', 'FontSize', 15);
  % Imagem 3 com gamma 0.3.
Gimg2 = imadjust(img2,[],[],0.3);    
subplot(1, 3, 3);
imshow(Gimg2);
title('Imagem 3 gamma(0.3)', 'FontSize', 15);
