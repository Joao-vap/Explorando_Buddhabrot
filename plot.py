#####################################################################################################
##          Codigo feito por Joao Victor A. P. (joaovictorpimenta@gmail.com/@joao_vap)             ##
##                                                                                                 ##
##         --> Inspirado e possibilitado pela divulgadora Julia Marcolan (@julhamarcolan)          ##
#####################################################################################################

import sys
import numpy as np
import matplotlib.pyplot as plt

argumentos = sys.argv

# argumentos[0] nome do arquivo
# argumentos[1] nome do arquivo com valores

## "pot" vai definir o contraste nas imagens a serem criadas [0 < pot <= 1]
pot = [0.2, 0.4, 0.6, 0.8]

for p in pot:
    ## Carrega-se o texto do outro arquivo
    imagem = (np.loadtxt(argumentos[1]) + 1)**p

    ## Resta definir as cores e abrir a imagem
    plt.imshow(imagem, cmap="inferno")
    plt.savefig('inferno-npontos.10000000_resolucao.1024x1024' + '_p.' + str(p) + '.png')
