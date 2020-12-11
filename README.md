# Explorando_Buddhabrot
Armazenando testes de parâmetros para auxiliar na criação de figuras de Buddhabrot

  Figuras de Buddhabrot geram imagens maravilhosas e que geram enorme interesse. Sua forma e processo é associado ao processo de formação do Fractal de Mandelbrot. Em suma, parte-se de números complexos aleatórios somados à (0,0) e repete-se o resultado por ele mesmo e somar ao número previamente escolhido. Aqueles que não fizerem partes do conjunto de Mandelbrot, devem ter seus caminhos registrados na imagem. A figura final é uma espécie de densidade do caminho percorrido por esses números.

  Dois arquivos são usados para fazer as figuras: "Buddhabrot.py" e "plot.py". O primeiro contém todo o processo de formação do arquivo de texto com os dados que formarão as figuras. 'Plot.py', por sua vez, faz muito pouco mais do que colorir o arquivo e salvar as imagens para diferentes parâmetros.
  
  Nas diversas pastas de 'c' estarão os resultados para aquele número de ciclos e vão estar diversas imagens em pastas correspondentes à seus parâmetros. Os tempos necessários na minha máquina para as imagens estão tabelados no pdf "Tabelação_Parâmetros". Pode servir de orientação para a escolha própria dos parâmetros.
  
  Uma coisa a se observar é que se escala as cores com uma potência fracionária. O efeito varia de acordo com os parâmetros, podendo ser, ou não, vantajoso.
  
