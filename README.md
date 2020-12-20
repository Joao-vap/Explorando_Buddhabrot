# Explorando Buddhabrot

## O que é

  Figuras de Buddhabrot geram imagens maravilhosas e de enorme interesse. Sua forma e processo é associado ao processo de formação do Fractal de Mandelbrot. Em suma, usamos a sequência <a href="https://www.codecogs.com/eqnedit.php?latex=z_n^2&space;&plus;&space;z_c&space;=&space;z_{n&plus;1}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?z_n^2&space;&plus;&space;z_c&space;=&space;z_{n&plus;1}" title="z_n^2 + z_c = z_{n+1}" /></a>, em que <a href="https://www.codecogs.com/eqnedit.php?latex=z_0&space;=&space;(0,0)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?z_0&space;=&space;(0,0)" title="z_0 = (0,0)" /></a> e <a href="https://www.codecogs.com/eqnedit.php?latex=z_c" target="_blank"><img src="https://latex.codecogs.com/gif.latex?z_c" title="z_c" /></a> é um complexo qualquer. Após c iterações, sendo c um número suficiente para se perceber que o número vai à infinito, registra-se o 'caminho', os resultados de cada iteração, se esses números não forem do conjunto de Mandelbrot. Estes caminhos são registrados na imagem. A figura final é uma espécie de densidade do caminho percorrido por esses números.

## Como fizemos
  Dois arquivos são usados para fazer as figuras: "Buddhabrot.py" e "plot.py". O primeiro contém todo o processo de formação do arquivo de texto com os dados que formarão as figuras. O segundo, por sua vez, faz muito pouco mais do que colorir o arquivo e salvar as imagens para diferentes parâmetros.
  
 ## Como os dados e imagens estão armazenados
 
  Nas diversas pastas de 'c' estarão os resultados para aquele número de ciclos e vão estar diversas imagens em pastas correspondentes à seus parâmetros. Os tempos necessários na minha máquina para as imagens estão tabelados no pdf "Tabelação_Parâmetros" e de forma um pouco mais interessante no Gráfico 'Tempos por Parametros'. Vale notar que c = 10000 não está no gráfico pois sua escala foge da grandeza de tempo dos outros, mas fica registrado na tabela. Assim, estes dados podem servir de orientação para a escolha própria dos parâmetros.

## Conselhos para quem tiver fazendo
  
  Adicionar limites inferiores ao número de iterações de um número, antes de adicionar seu processo à matriz da imagem, pode melhorar muito a definição das imagens, além de reduzir o tempo de processamento. O limite inferior depende do número total de iterações, mas algo em torno de ~ 2/5 do número total, deve ser uma boa regra de dedo.
  
  Uma coisa a se observar é que se escala as cores com uma potência fracionária. O efeito varia de acordo com os parâmetros, podendo ser, ou não, vantajoso.
  
## As imagens geradas
<img src="https://github.com/eru-iluv/Explorando_Buddhabrot/blob/adding-julia-stuff/imagens_readme/496-c10%5E5-n10%5E6.png" width="500" height="500">
Essa parece um hipopótamo

<img src="https://github.com/eru-iluv/Explorando_Buddhabrot/blob/adding-julia-stuff/imagens_readme/seismic-npontos.tst.resolucao.1024x1024_p.1.png" width="500">

## O que faremos em seguida
   
   _UM SITEZIN!! Yupii!_
   
   A ideia é consolidar todos os conhecimentos que obtivemos (Não muitos, tbh) e fazer um minibloguizinho sobre o brásico que encontramos sobre buddhabrot em português, com alguns conselhos pra quem tiver fazendo também
