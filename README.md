# Explorando Buddhabrot

Armazenando testes de parâmetros para auxiliar na criação de figuras de Buddhabrot

  Figuras de Buddhabrot geram imagens maravilhosas e de enorme interesse. Sua forma e processo é associado ao processo de formação do Fractal de Mandelbrot. Em suma, usamos a sequência <a href="https://www.codecogs.com/eqnedit.php?latex=z_n^2&space;&plus;&space;z_c&space;=&space;z_{n&plus;1}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?z_n^2&space;&plus;&space;z_c&space;=&space;z_{n&plus;1}" title="z_n^2 + z_c = z_{n+1}" /></a>, em que <a href="https://www.codecogs.com/eqnedit.php?latex=z_0&space;=&space;(0,0)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?z_0&space;=&space;(0,0)" title="z_0 = (0,0)" /></a> e <a href="https://www.codecogs.com/eqnedit.php?latex=z_c" target="_blank"><img src="https://latex.codecogs.com/gif.latex?z_c" title="z_c" /></a> é um complexo qualquer. Após c iterações, sendo c um número suficiente para se perceber que o número vai à infinito, registra-se o 'caminho', os resultados de cada iteração, se esses números não forem do conjunto de Mandelbrot. Estes caminhos são registrados na imagem. A figura final é uma espécie de densidade do caminho percorrido por esses números.

  Dois arquivos são usados para fazer as figuras: "Buddhabrot.py" e "plot.py". O primeiro contém todo o processo de formação do arquivo de texto com os dados que formarão as figuras. O segundo, por sua vez, faz muito pouco mais do que colorir o arquivo e salvar as imagens para diferentes parâmetros.
  
  Nas diversas pastas de 'c' estarão os resultados para aquele número de ciclos e vão estar diversas imagens em pastas correspondentes à seus parâmetros. Os tempos necessários na minha máquina para as imagens estão tabelados no pdf "Tabelação_Parâmetros" e de forma um pouco mais interessante no Gráfico 'Tempos por Parametros'. Vale notar que c = 10000 não está no gráfico pois sua escala foge da grandeza de tempo dos outros, mas fica registrado na tabela. Assim, estes dados podem servir de orientação para a escolha própria dos parâmetros.
  
  Uma coisa a se observar é que se escala as cores com uma potência fracionária. O efeito varia de acordo com os parâmetros, podendo ser, ou não, vantajoso.
  
