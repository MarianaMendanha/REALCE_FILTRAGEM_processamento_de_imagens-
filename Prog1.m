clear all
close all
clc

% DIRET�RIOS COM AS FUN��ES UTILIZADOS
dir dec_int.m
dir edge_improv.m

  % Setup na imagem.
img = imread('C:\Users\rose_\Desktop\MARI\9_NONO\IPI\TRABALHOS\test80.jpg');

  % Recebe o fator N do usuário.
n = input("Escolha quantas vezes diminuir a imagem ")

% PROCESSO COM dec_int:
  % Chama a fun��o dec_int().  
DIimg = dec_int(img,n);
  %  Chama função edge_improv().
EDIimg = edge_improv(DIimg);
 
  % Display da imagem original.
subplot(2, 3, 1);
imshow(img);
title('Imagem Original', 'FontSize', 15);  
  % Display da imagem da função dec_int.
subplot(2, 3, 2);
imshow(DIimg);
title('Imagem Reduzida e Ampliada dec.int', 'FontSize', 15);
  % Display da imagem da fun��o edge_improv.
subplot(2, 3, 3);
imshow(EDIimg);
title('Imagem Agu�ada dec.int', 'FontSize', 15);

% PROCESSO COM RESIZE:
  % Reduz imagem.
Rimg = imresize(img,(1/n));
  % Amplia imagem.
RRimg = imresize(Rimg,n);
  %  Chama função edge_improv().
ERRimg = edge_improv(RRimg);


  % Display da imagem original.
subplot(2, 3, 4);
imshow(img);
title('Imagem Original', 'FontSize', 15);
  % Display da imagem da reduzida e ent�o ampliada com resize().
subplot(2, 3, 5);
imshow(RRimg);
title('Imagem Reduzida e Ampliada resize', 'FontSize', 15);
  % Display da imagem da fun��o edge_improv.
subplot(2, 3, 6);
imshow(ERRimg);
title('Imagem Agu�ada resize', 'FontSize', 15);

% FIM