

## INTRODUÇÃO AO USO DA LINGUAGEM R ##
## Grupo de Estudos em Ciência de Dados (GECD) - Foz do Iguaçu (PR), Brasil
## mariliabioufpr@gmail.com 

## !!: 
## -- Assim como o Python, o R não lê comentário depois de uma hash (#). Aproveitem essa ferramenta para escrever todos 
##    os comentários que acharem necessário durante a aula. 
## -- Evitem utilizar acentos pq nem sempre ele salva da maneira correta; 'façam o que eu digo e não o que eu faço' rsrs.

## --- R como uma calculadora --- ##

## Vamos começar com a utilização do R como uma calculadora. 
## O uso do R é extremamente parecido com o Python, a única diferença é que a execução de comandos é realizada
## mediante 'ctrl + r'. Por exemplo, quanto é 2 + 2? Escreva a função sem o uso da hash e então precione 'crtl + enter'.  
2+2 # soma

## Agora vamos tentar outras operações aritméticas: 
2-2 # subtração
2*2 # multiplicação
2/2 # divisão
2^2 # potenciação 

## Nós também conseguimos realizar operações mais complexas:
2*2+(9/8/10*5+7)+3.4-8+6

## --- Atribuição de valores --- ## 

## No R podemos atribuir valores a um dado objetivo utilizado '<-' ou '='. 
## Essa atribuição é como damos valores a uma determinada variável.
## Exemplo:
a<-2+2
a # o 'a' agora têm o valor de 4.

b=4+4
b # o 'b' agora têm o valor de 8.

## Essas atribuições podem ser utilizadas para operações mais complexas:
a+b
a-b
a*b
a/b

# !! Cuidado para não sobreescrever valores !! 
a<-2+2
a

a<-4+2
a

# --- Criando vetores --- ##
## Um vetor é um objeto unidimensional em que todos os seus elementos são de mesmo modo 
## e estão dispostos em uma unica dimensão. 

## Para a criação de vetores podemos utilizar os seguintes comandos:
c(2, 4, 6) # o 'c' é o comando 'concatenar' e ele une uma gama de valores a um vetor
2:6 # o ':' lista valores inteiros entre 2 e 6
seq(2, 3, by=0.5) # o 'seq' lista uma sequência complexa entre valores predefinidos e quebras também definidas. 
rep(1:2, times=3) # o 'rep' repete o vetor.
rep(1:3, each=3) # o 'rep' com 'each=' repete os elementos de um vetor. 

## Você pode atribuir os valores de um vetor para um objeto/variável, por exemplo:
d<-c(2, 4, 6)
d
e<-2:6
e
f<-seq(2,3, by=0.5)
f
g<-rep(1:2, each=5)
g

## -->  Algumas funções com vetores: 
h<-c(5, 8, 3, 9, 10, 11, 15, 1, 0, 2)
h

sort(h) # Arranja os valores do vetor de maneira crescente 
rev(h) # Reverte os valores do vetor
unique(h) # Revela os valores unicos do vetor 

## Selecionando os valores de um vetor
h[4] # Seleciona o 4º valor do vetor 'h'
h[-4] # Retira o 4º valor do vetor 'h'
h[2:4] # Seleciona os valores dos elementos entre 2ª e 4ª colocação no vetor.
h[-(2:4)] # Todos os elementos menos os que estão entre a 2ª e a 4ª colocação.
h[c(1,5)] # Seleciona os elementos 1 e 5 do vetor. 

## Selecionandos por valores do vetor
h[h==10] # Seleciona os elementos de 'h' com valores que são iguais a 10.
h[h<10] # Seleciona os elementos de 'h'  com valores que são menores que 10.
h[h %in% c(1, 2, 5)] # Seleciona os elementos de 'h' que estão na 1ª, 2ª e 5ª posição respectivamente. 

## operações para comparação das variáveis
a # relembrando o valor de a = 6
b # relembrando o valor de b = 8

a > b  # a é maior do que b?
a >= b # a é maior que ou igual a?
a < b  # a menor que b?
a <= b # a menor que ou igual a
a == b # igualdade
a != b # diferenca

## --- Criação de fatores --- ##

## E se fosse uma variável é qualitativa? Ou seja, e se as respostas dessa variável são categorias?
p1<-factor(c('z', 'y', 'w', 'z', 'y', 'y', 'w')) # Sempre incluir as categorias entre ' ou ".
p1

levels(p1) # quais são os níveis de p1?

p2<-c(z, y, w) # !! Sem o ' ou " o R entende que é uma variável/objeto. !!

## --- Tipo de dados --- ## 
## Usamos o comando 'typeof()'
typeof(12352)
typeof(0.0256)
typeof("hello")

## --- Comparando dados --- ##
0==1 # o 0 é igual a 1?
1==1 # O 1 é igual a 1?
a==b # a é igual a b?

## --- Print em R (: --- ##
print(p1) # imprime o conteudo da variavel chamada de 'o1'
print("Hola mundo!") # aquela da outra aula...

## --- Pacotes do R --- ## 
## Basicamente um pacote do R é uma convenção para organizar e padronizar a distribuição de funções extras do R.
help.start() # Em "references" > "Packages" você pode verificar os pacotes que você possui no seu computador.  
install.packages("ggplot2") # O comando 'install.packages' é utilizado para a instalção de pacotes no computador
                            # Neste caso instalamos o pacote 'ggplot2' utilizado para criação de gráficos. 
library(ggplot2) # O comando 'library' carrega o pacote para uso em R.
search() # verificar pacotes carregados


## --- Work Directory --- ## 
## Pasta que selecionamos previamente para chamar tabelas de dados ou salvar nossos arquivos trabalhados em .R
setwd("C:/Users/MMF/Dropbox/git_teste/GECD/Aulas/04-1210") # o comando setws define a pasta onde queremos chamar nossos 
                                                           # arquivos ou salva-los. 
getwd() # nos diz qual é o nosso atual diretorio. 
dir() # nos diz o nome dos arquivos em nosso diretório
dir(patt = ".csv") # lista os arquivos do tipo csv
dir.create("pasta") # cria uma nova pasta diretório dentro do atual

## --- Importando tabelas de dados --- ##
nome <- read.table("tabela.csv", sep = "\t", h = T)
nome


###---------------------------------------------------------###

## --- Outras funções interessantes --- ##

ls() # lista todas as variáveis criadas
rm(a) # para remoção de uma variável de interesse, neste caso foi a 'a'. 
rm(list = ls()) # remover todas as variaveis no workspace do r
help("print") # o help() é usado para saber como funciona uma função
?print # sinonimo de help()
citation() # para citar a versão do R que você está usando
citation('vegan') # para citar o pacote 'vegan'