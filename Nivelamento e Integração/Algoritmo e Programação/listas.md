# Listas

#### Estas notas explicativas são uma tradução e adaptação (quando cabível) do trabalho original feito por Rafel Grimson em [UNSAM_2020c2_Python](https://github.com/python-unsam/UNSAM_2020c2_Python/blob/master/Notas/01_Introduccion/05_Listas.md)

Listas em Python são como se fossem coleções que servem para armazenar valores de forma ordenada e sequencial.

### Criação de Listas

Para definir listas, é utilizado colchetes `[]`

```python
nomes = [ 'Rosa', 'Manuel', 'Luciana' ]
numeros = [ 39, 38, 42, 65, 111]
```

Às vezes as listas podem ser criadas com outros métodos. Por exemplo, os elementos de uma string podem ser separados em uma lista utilizando o método `split()`:

```python
>>> linha = 'Pera,100,490.10'
>>> lista_linha = linha.split(',') # a vírgula indica o elemento que separa
>>> lista_linha
['Pera', '100', '490.10']
>>>
```

### Operações com Listas

As listas podem armazenar elementos de qualquer tipo. Elementos novos podem ser acrescentados usando o método `append()`:

```python
nomes.append('Maurício') # Adiciona ao final
```

Também é possível usar o símbolo de adição `+` para concatenar listas:

```python
s = [1, 2, 3]
t = ['a', 'b']
s + t  # [1, 2, 3, 'a', 'b']
```

Atenção: **As listas começam pelo índice 0 e não por 1**. São também indexadas por números inteiros (0, 1, 2 ...).

```python
nomes = [ 'Rosa', 'Manuel', 'Luciana' ]

nomes[0]  # 'Rosa'
nomes[1]  # 'Manuel'
nomes[2]  # 'Luciana'
```

Também é possível informar índices negativos e percorrer a lista começando de seu final.

```python
nomes[-1] # 'Luciana'
```

É possível alterar qualquer elemento de uma lista. **Listas não são imutáveis**.

```python
nomes[1] = 'João Manual'
nomes # [ 'Rosa', 'João Manual', 'Luciana' ]
```

Também é possível inserir elementos em uma posição, lembrando que os índices começam em 0.

```python
nomes.insert(2, 'Sérgio') # Insere na posição número 2 (terceiro elemento).
nomes.insert(0, 'Sérgio') # Insere como primeiro elemento.
```

A função `len` permite obter o tamanho de uma lista.

```python
nomes = ['Rosa','Manuel','Luciana']
len(nomes)  # 3
```

É possível verificar se determinado elemento pertence ou não a uma lista através das operações `in` e `not in`.

```python
'Rosa' in nomes     # True (nome está contido na lista)
'Diego' not in nomes  # True (nome não está contido na lista)
'Diego' in nomes # False (nome não está na lista)
```

Também é possível "multiplicar" o tamanho de uma lista (`s * n`).

```python
s = [1, 2, 3]
s * 3 # [1, 2, 3, 1, 2, 3, 1, 2, 3]
```

### Iteradores de Lista e Busca

Use o comando `for` para iterar sobre os elementos de uma lista.

```python
for nome in nomes:
    # usa o nome
    # e.g. print(nome)
    ...
```

Para encontrar rapidamente a posição de um elemento em uma lista utilize o método `index()`.

```python
nomes = ['Rosa','Manuel','Luciana']
nomes.index('Luciana')   # 2
```

Se o elemento está presente em mais de uma posição, `index()` retornará o índice da primeira ocorrência. Se o elemento não estiver presente haverá o lançamento de uma exceção do tipo `ValueError`.

### Apagar Elementos

É possível apagar elementos de uma lista tanto usando o valor do elemento quanto a sua posição:

```python
# Usando o valor
nomes.remove('Luciana')

# Usando a posição
del nomes[1]
```

A exclusão de um elemento não gera um vácuo. Os elementos subsequentes serão movidos de forma a preencher o vazio. Caso haja mais de um elemento, `remove()` só fará a exclusão da primeira ocorrência.

### Ordenar uma Lista

As listas podem ser ordenas "in-place", ou seja, sem criar um retorno de outra coleção, a ordenação ocorre modificando a própria lista.

```python
s = [10, 1, 7, 3]
s.sort() # [1, 3, 7, 10]

# Ordem inversa
s = [10, 1, 7, 3]
s.sort(reverse=True) # [10, 7, 3, 1]

# Funciona com qualquer tipo de dados que contém ordem
s = ['foo', 'bar', 'spam']
s.sort()  # ['bar', 'foo', 'spam']
```

Utilize `sorted()` caso quira gerar uma nova lista ordenada no lugar da lista atual. Desta forma a lista original não é modificada e o resultado é retornado através de outra lista em uma nova variável.

```python
t = sorted(s)  # s continua desordenado, t contém os valores ordenados.
```

### Listas e Matemática

_Cuidado: As listas não foram projetadas para realizar operações matemáticas._

```python
>>> nums = [1, 2, 3, 4, 5]
>>> nums * 2
[1, 2, 3, 4, 5, 1, 2, 3, 4, 5]
>>> nums + [10, 11, 12, 13, 14]
[1, 2, 3, 4, 5, 10, 11, 12, 13, 14]
```

As listas não representam vetores nem matrizes como em MATLAB, Ocatve, R e etc...No entanto, existem bibliotecas em Python que fazem muito bem este trabalho (por exemplo [numpy](https://numpy.org)). Fique ligado que aqui no GECD também iremos falar de numpy ;)

## Exercícios com Respostas

Nos exercícios seguintes, vamos experimentar com o tipo de dado _list_ em Python. É recomendável que você execute os exercícios com resposta no console do interpretador para fixação dos conceitos explicados.

### Exercício 1: Split de uma String

```python
>>> frutas = 'Framboesa,Maçã,Laranja,Tangerina,Banana,Melancia,Pera'
```

Crie uma lista com os nomes de frutas utilizando o comando `split()`:

```python
>>> lista_frutas = frutas.split(',')
```

### Exercício 2: Extração e Edição de Elementos.

Experimente os comandos seguintes para extrair um elemento:

```python
>>> lista_frutas[0]
'Framboesa'
>>> lista_frutas[1]
'Maçã'
>>> lista_frutas[-1]
'Pera'
>>> lista_frutas[-2]
'Melancia'
>>>
```

Tente mudar um valor:

```python
>>> lista_frutas[2] = 'Romã'
>>> lista_frutas
['Framboesa', 'Maçã', 'Romã', 'Tangerina', 'Banana', 'Melancia', 'Pera']
>>>
```

Faça um fatiamento (slicing) da lista:

```python
>>> lista_frutas[0:3]
['Framboesa', 'Maça', 'Romã']
>>> lista_frutas[-2:]
['Melancia', 'Pera']
>>>
```

Cria uma lista vazia e adicione um elemento.

```python
>>> compra = []
>>> compra.append('Pera')
>>> compra
['Pera']
```

É possível inclusive atribuir uma lista a uma porção de outra lista. Por exemplo:

```python
>>> lista_frutas[-2:] = compra
>>> lista_frutas
['Framboesa', 'Maça', 'Romã', 'Tangerina', 'Banana', 'Pera']
>>>
```

Quando isto é feito, a lista do lado esquerdo (`lista_frutas`) vai mudar seu tamanho para acomodar a lista do lado direito(`compra`).
No exemplo acima os últimos elementos da lista `lista_frutas` foram substituídos por um único elemento na lista `compra`.

### Exercício 3: Iterações em Listas

O ciclo `for` funciona iterando sobre dados em uma sequência. Verifique isto digitando o código abaixo e examinando as saídas:

```python
>>> for s in lista_frutas:
        print('s =', s)
>>>
```

### Execício 4: Testar se Elemento Pertence a Lista

Utilize os operadores `in` ou `not in` para verificar se
`'Romã'`,`'Lima'`, e `'Limão'` pertencem a lista de frutas.

```python
>>> 'Romã' IN lista_frutas
True
>>> 'Lima' IN lista_frutas
False
>>> 'Limão' NOT IN lista_frutas
True
>>>
```

### Exercício 5: Agregar, Inserir e Excluir Elementos

Utilize o método `append()` para adicionar `'Manga'` ao final de `lista_frutas`.

```python
>>> # agrega 'Manga' ao final da lista
>>> lista_frutas.append('Manga')
>>> lista_frutas
['Framboesa', 'Maça', 'Romã', 'Tangerina', 'Banana', 'Pera', 'Manga']
>>>
```

Utilize o método `insert()` para colocar `'Lima'` como segundo elemento da lista.

```python
>>> # Inserir 'Lima' como segundo elemento
>>> lista_frutas.insert(1, 'Lima')
>>> lista_frutas
['Framboesa', 'Lima', 'Maça', 'Romã', 'Tangerina', 'Banana', 'Pera', 'Manga']
>>>
```

Utilize o método `remove()` para apagar `'Tangerina'` da lista.

```python
>>> # Apagar 'Tangerina'
>>> lista_frutas.remove('Tangerina')
>>> lista_frutas
['Framboesa', 'Lima', 'Maça', 'Romã', 'Banana', 'Pera', 'Manga']
>>>
```

Adiciona uma segunda cópia de `'Banana'` ao final da lista.

_Observação: é perfeitamente válido ter valores duplicados em uma lista. Mais para frente veremos outra estrutura de dados que não permite valores duplicados._

```python
>>> # Agregar 'Banana' ao final da lista
>>> lista_frutas.append('Banana')
>>> lista_frutas
['Framboesa', 'Lima', 'Maça', 'Romã', 'Banana', 'Pera', 'Manga', 'Banana']
>>>
```

Utilize o método `index()` para determinar a posição da primeira ocorrência de `'Banana'` na lista.

```python
>>> # Encontrar a primeira ocorrência de 'Banana'
>>> lista_frutas.index('Banana')
4
>>> lista_frutas[4]
'Banana'
>>>
```

Conte a quantidade de aparições de `'Banana'` na lista:

```python
>>> lista_frutas.count('Banana')
2
>>>
```

Apague a primeira ocorrência de `'Banana'`.

```python
>>> # Apagar a primeira ocorrência de 'Banana'.
>>> lista_frutas.remove('Banana')
>>> lista_frutas
['Framboesa', 'Lima', 'Maça', 'Romã', 'Pera', 'Manga', 'Banana']
>>>
```

Curiosidade: não existe um método que permite encontrar e apagar _todas_ as ocorrências de um elemento em uma lista. Mas adiante será mostrado como fazer isso de uma forma elegante.

### Exercício 6: Ordenação

Deseja ordenar uma lista? Use o método `sort()`. Digite no console:

```python
>>> lista_frutas.sort()
>>> lista_frutas
['Banana', 'Framboesa', 'Lima', 'Manga', 'Maça', 'Pera', 'Romã']
>>>
```

E se ordenar ao contrário?

```python
>>> lista_frutas.sort(reverse=True)
>>> lista_frutas
['Romã', 'Pera', 'Maça', 'Manga', 'Lima', 'Framboesa', 'Banana']
>>>
```

Observação: Lembre-se que o método `sort()` modifica o conteúdo da mesma lista _in-place_. Os elementos são ordenados movendo-os de uma posição a outra, sem criar uma outra lista.

### Exercício 7: Mesclar lista de strings

Se deseja converter uma lista de strings em uma única string, utilize o método `join()` como nos exemplos a seguir:

```python
>>> lista_frutas = ['Banana', 'Manga', 'Framboesa', 'Pera', 'Romã', 'Maça', 'Lima']
>>> # Utiliza o caractere ',' entre os elementos
>>> a = ','.join(lista_frutas)
>>> a
'Banana,Manga,Framboesa,Pera,Romã,Maça,Lima'
>>> # Utiliza o caractere ':' entre os elementos
>>> b = ':'.join(lista_frutas)
>>> b
'Banana:Manga:Framboesa:Pera:Romã:Maça:Lima'
>>> # Não coloca nenhum caractere entre os elementos
>>> c = ''.join(lista_frutas)
>>> c
'BananaMangaFramboesaPeraRomãMaçaLima'
>>>
```

### Exercício 8: Listas de qualquer coisa

As listas podem conter qualquer tipo de objeto, incluindo outras listas (listas aninhadas).

Experimente o seguinte:

```python
>>> nums = [101, 102, 103]
>>> items = ['spam', lista_frutas, nums]
>>> items
['spam', ['Banana', 'Manga', 'Framboesa', 'Pera', 'Romã', 'Maça', 'Lima'], [101, 102, 103]]
>>>
```

Preste bastante atenção na saída. `items` é uma lista com três elementos. O primeiro é uma string, porém os outros dois elementos são listas.

É possível acessar os elementos das listas aninhadas usando múltiplas operações de acesso por índice.

```python
>>> items[0]
'spam'
>>> items[0][0]
's'
>>> items[1]
['Banana', 'Manga', 'Framboesa', 'Pera', 'Romã', 'Maça', 'Lima']
>>> items[1][1]
'Manga'
>>> items[1][1][2]
'n'
>>> items[2]
[101, 102, 103]
>>> items[2][1]
102
>>>
```

Apesar de que é tecnicamente possível fazer uma estrutura de listas complexa, como regra geral, é melhor manter as coisas simples. O mais usual é usar as listas para elementos do mesmo tipo. Por exemplo, uma lista só de números ou uma lista de strings.
Mesclar tipos de dados diferentes em uma mesma lista podem ficar conceitualmente confuso (algumas linguagens nem permitem isso), logo é melhor evitar.

### Exercício 9: Tradutor (rústico) de linguagem inclusiva

Faça um tradutor que troque as palavras masculinas/femininas pelo símbolo `'_'`. Como uma primeira aproximação, complete o código abaixo para trocar todas as letras 'o' e 'a' que estão ou no último caractere ou no antepenúltimo caractere de cada palavra por `'_'`. Por exemplo 'todos os amigos' passaria a ser 'tod_s os amig_s.

```python
>>> frase = 'todos os amigos'
>>> palavras = frase.split()
>>> for palavra in palavras:
        if ?
        ...
    frase_t = ?
    print(frase_t)
'tod_s os amig_s'
>>>
```

### Desafio extra:

O exercício a seguir foi retirado da plataforma de estudo HackerRank e serve como complemento para fixação dos conceitos apresentados aqui.

Exercício enviado por: [Shashank Sharma](https://www.hackerrank.com/profile/shashank21j)

Considere a lista (`list = []`). Você pode fazer os seguintes comandos:

1. `insert e`: Inserir um inteiro `e` na posição `i`
2. `print` : Imprimir a lista
3. `remove e`: Deleta a primeira ocorrência do inteiro `e`.
4. `append e`: Insere o inteire `e` ao final da lista.
5. `sort`: Ordena a lista.
6. `pop`: Retira o último elemento da lista.
7. `reverse`: Reverte a lista.

Inicialize a lista vazia, leia do console um valor `n` seguido de `n` linhas de comandos onde cada comando pode ser um dos 7 tipos apresentados acima. Itere cada comando na ordem e faça a operação correspondente na sua lista.

#### Formato de entrada

A primeira linha contém um inteiro, `n`, informando o número de comandos. Cada linha `i` das `n` linhas subsequentes contém um dos comandos descritos acima.

#### Restrições

Os elementos adicionados na lista devem ser números inteiros.

#### Formato da saída

Para cada comando do tipo `print`, imprima a lista em uma nova linha.

#### Exemplo de entrada

```shell
12
insert 0 5
insert 1 10
insert 0 6
print
remove 6
append 9
append 1
sort
print
pop
reverse
print
```

#### Exemplo de saída

```python
[6, 5, 10]
[1, 5, 9, 10]
[9, 5, 1]
```

Isso conclui uma introdução sobre listas em Python, no próximo capítulo, você vai aprender mais sobre tuplas e dicionários.
