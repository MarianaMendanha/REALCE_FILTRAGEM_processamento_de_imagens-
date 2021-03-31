# REALCE_FILTRAGEM

PARTE1:
1) FUNÇÃO chamada dec_int que dada uma imagem diminui a imagem por um
fator de N (multiplo de 2). Logo, interpola a imagem para o tamanho original,
simplesmente repetindo o valor do pixel mais próximo. Na função, NÃO é permitido 
o uso da função 'imresize' do MATLAB ou qualquer função similar do OPENCV como 
'cvResize'. 
->arquivo dec_int

2) FUNÇÃO chamada edge_improv que utiliza um filtro de aguçamento no domínio
espacial de forma de melhorar a qualidade subjetiva de uma determinada imagem.
->arquivo edge_improv

3) Programa principal chamado Prog1 que chama a função dec_int para a imagem 
'test80.jpg' (colorida). Mostra o resultado. Faz um processo similar utilizando
redução e interpolação bicúbica. Utilizando 'imresize' do MATLAB. Utilize a 
função edge_improv para melhorar subjetivamente ambas imagens interpoladas.
->arquivo Prog 1

4) Propõe maneira de tem um resultado melhor na função dec_int para interpolar a
imagem de volta ao tamanho original (ou seja, algo melhor do que copiar o pixel mais
próximo). *descrição no relatório sobre projeto*

No relatório desta parte tem-se:

A) As imagens reduzidas

B) As imagens interpoladas

C) As imagens após o filtro de aguçamento do lado das imagens originais.

D)comentários dos resultados.

PARTE2:
Dada as imagens: "car.png", "crowd.png" e "university.png". Programa que realiza o
realce destas três imagens mediante as técnicas power-law e equalização de histograma.

1) Testa o realce power-law (correção gamma) com valores diferentes, para cada imagem. 
 No relatório tem-se os resultados para cada imagem.
 ->arquivo gamma

2) Equaliza as três imagens, mostra o resultado das três. E de uma delas mostra o
histograma e CDF (função de distribuição acumulada) antes e depois da equalização.
->arquivo equaliz

3) Comentário dos resultados no relatório.
