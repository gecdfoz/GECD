# Tuplas

#### Estas notas explicativas são uma tradução e adaptação (quando cabível) do trabalho original feito pelo portal web [w3schools](https://www.w3schools.com/python/python_tuples.asp).

As tuplas são como se fossem uma lista, uma coleção de elementos ordenados porém **imutável**. Ou seja, a definição da tupla não permite a edição do seu conteúdo. Em python tuplas são escritas com "()".

```python
tupla = ("maçã", "banana", "cereja")
print(tupla)
```

### Acessar itens de uma tupla

Você pode acessar itens de uma tupla fazendo referência ao número do índice em "[]". O acesso é feito de forma igual as listas.

```python
tupla = ("maçã", "banana", "cereja")
print(tupla[1]) # banana
```

Assim como as listas, é possível acessar a tupla de trás para frente usando índices negativos.

```python
tupla = ("maçã", "banana", "cereja")
print(tupla[-1]) # cereja
```

### Intervalo de Índices

Você pode especificar um intervalo de índices onde começar e onde terminar um trecho de seleção da tupla (não inclusivo).

```python
tupla = ("maça", "banana", "cereja", "laranja", "kiwi", "melão", "manga")
print(tupla[2:5])
>>> ('cereja', 'laranja', 'kiwi')
```

Neste exemplo a busca começa no índice 2 (incluso) e termina no índice 5 (não incluso), lembrando que a contagem começa a partir do índice 0.

Também é possível utilizar índices negativos que varrem a tupla de trás para frente como no exemplo abaixo:

```python
tupla = ("maça", "banana", "cereja", "laranja", "kiwi", "melão", "manga")
print(tupla[-4:-1])
>>> ('laranja', 'kiwi', 'melão')
```

### Mudar Valores em uma Tupla

Uma vez que a tupla é criada, você nao pode mudar seus valores. Tuplas são **imutáveis**. Mas há uma forma de contornar isso. Você pode converter a tupla em uma lista, fazer alguma alteração, e por fim convertê-la novamente para uma tupla.

```python
x = ("maçã", "banana", "cereja")
y = list(x)
y[1] = "kiwi"
x = tuple(y)

print(x)
>>> ("maçã", "kiwi", "cereja")
```

### Iterar por uma Tupla

A forma de iterar por uma tupla é igual a uma lista.

```python
tupla = ("maçã", "banana", "cereja")
for x in tupla:
  print(x)
```

### Verificar se Tupla possui Algum Item

Para determinar se uma tupla possui um determinado item utilize a palavra-chave `in`.

```python
tupla = ("maçã", "banana", "cereja")
if "maçã" in tupla:
  print("Tupla contém a palavra 'maçã'")
```

### Extensão de uma Tupla

Para determinar quantos itens uma tupla possui, utilize o método `len()`:

```python
tupla = ("maçã", "banana", "cereja")
print(len(tupla))
>>> 3
```

### Adicionar Itens

Uma vez que a tupla é criada, você não pode adicionar itens a ela. Lembre-se: tuplas são **imutáveis**.

O exemplo a seguir faz o Python lançar um erro:

```python
tupla = ("maçã", "banana", "cereja")
tupla[3] = "larnaja" # erro
print(tupla)
```

### Criar Tupla com um Único Item

Para criar a tupla com um único item, você deve adicionar uma vírgula ao final, senão o Python não reconhecerá a atribuição como sendo uma tupla.

```python
tupla = ("maça",)
print(type(tupla))
>>> <class 'tuple'>

tupla = ("maça") # cuidado!, não cria uma tupla
print(type(tupla))
>>> <class 'str'>
```

### Remover Itens

Isto não é possível em uma tupla, no entanto você pode apagar a tupla inteira.

A palavra reservada `del` elimina a tupla completamente.

```python
tupla = ("maçã", "banana", "cereja")
del tupla
print(tupla) # Irá lançar um erro pois a tupla não existe mais
```

### Juntar Duas Tuplas

Para juntar duas tuplas, use o operador `+`.

```python
tupla1 = ("a", "b", "c")
tupla2 = (1, 2, 3)

tupla3 = tupla1 + tupla2
```

### O Construtor tuple()

Também é possível usar o construtor `tuple()` para criar uma tupla.

```python
tupla = tuple(("maçã", "banana", "cereja")) # repare nos parênteses duplos
print(tupla)
```

### Métodos em uma Tupla

Python possui métodos prontos que você pode usar em tuplas.

- `count()`: Retorna o número de vezes que um elemento específico ocorre em uma tupla.
- `index()`: Procura na tupla pelo valor especificado e retorna a posição onde foi encontrado. Lança um erro se o valor não estiver presente.

### Desafio:

O exercício a seguir foi retirado da plataforma de estudo HackerRank e serve como complemento para fixação dos conceitos apresentados aqui.

Exercício enviado por: [Shashank Sharma](https://www.hackerrank.com/profile/shashank21j)

Dado um inteiro `n` e `n` inteiros separados por um espaço, crie uma tupla `t` para todos os `n` inteiros. Então compute e imprima o resultado de `hash(t)`.

**Atenção**: `hash()` é uma função padrão do python, logo não é necessário importar nada, bastando chamar a função.

#### Formato de entrada

A primeira linha contém um inteiro `n`, que representa o número de elementos em uma tupla. A segunda linha contém `n` inteiros separados por espaços simbolizando os elementos na tupla `t`.

#### Formato de saída

Imprima o resultado de `hash(t)`.

#### Exemplo de entrada

```shell
2
1 2
```

#### Exemplo de saída

```shell
3713081631934410656
```

# Dicionários

#### Estas notas explicativas são uma tradução e adaptação (quando cabível) do trabalho original feito pelo portal web [w3schools](https://www.w3schools.com/python/python_dictionaries.asp).

Em Python, um dicionário é uma coleção dados armazenado de forma ordenada, mutável e indexada. São escritos com o símbolo de chaves {} e possuem chaves e valores. Por exemplo:

```python
carro = {
  "marca": "Ford",
  "modelo": "Mustang",
  "ano": 1964
}
print(carro)
```

### Acessando Itens

Você pode acessar os itens de um dicionário ao referenciar o nome da sua chave dentro de colchetes [].

```python
x  = carro["modelo"]
```

Também é possível acessar itens utilizando o método `get()`:

```python
x = carro.get("modelo")
```

### Mudar Valores

É possível mudar o valor de um item em específico fazendo referência ao nome de sua chave:

```python
carro = {
  "marca": "Ford",
  "modelo": "Mustang",
  "ano": 1964
}
carro["ano"] = 2018
```

### Iterar em um Dicionário

Você pode iterar através de um dicionário usando um loop `for`.

Ao iterar em um dicionário, os valores retornados são as _chaves_ do dicionário, porém existem métodos pra retornar os _valores_ também.

```python
for x in carro:
  print(x)
>>> marca
>>> modelo
>>> ano
```

Para imprimir os valores basta chamar o mesmo usando a chave:

```python
for x in carro:
  print(carro[x])
>>> Ford
>>> Mustang
>>> 2018
```

Alternativamente é possível iterar através dos valores utilizando o método `values()`:

```python
for x in carro.values():
  print(x)
>>> Ford
>>> Mustang
>>> 2018
```

Para iterar no conjunto chave valor use o método `items()`:

```python
for x,y in carro.items():
  print(x, y)
```

### Verificar se uma Chave Existe

Para determinar se uma chave específica está presente no dicionário utilize a palavra-chave `in`:

```python
carro = {
  "marca": "Ford",
  "modelo": "Mustang",
  "ano": 1964
}
if "modelo" in carro:
  print("Sim, 'modelo' é uma das chaves do dicionário 'carro'")
```

### Tamanho de um Dicionário

Para determinar quantos pares chave valor um dicionário possui, utilize a função `len()`.

```python
print(len(carro))
```

### Adicionar Itens

Adicionar um item em um dicionário pode ser feito ao acrescentar uma nova chave e atribuir um valor a ela:

```python
carro = {
  "marca": "Ford",
  "modelo": "Mustang",
  "ano": 1964
}
thisdict["cor"] = "vermelho"
print(carro)
>>> {'marca': 'Ford', 'modelo': 'Mustang', 'ano': 1964, 'cor': 'vermelho'}
```

### Remover Items

Existem diversas formas de remover itens de um dicionário:

Usando o método `pop()`

```python
carro = {
  "marca": "Ford",
  "modelo": "Mustang",
  "ano": 1964
}
carro.pop("modelo")
print(carro)
>>> {'marca': 'Ford', 'ano': 1964}
```

O método `popitem()` remove o último item inserido (versões do Python anteriores a 3.7 remove um item aleatório).

```python
carro = {
  "marca": "Ford",
  "modelo": "Mustang",
  "ano": 1964
}
carro.popitem()
print(carro)
>>> {'marca': 'Ford', 'modelo': 'Mustang'}
```

A palavra-chave `del` remove um item com um valor de chave específico (similar ao `pop()`).

```python
carro = {
  "marca": "Ford",
  "modelo": "Mustang",
  "ano": 1964
}
del carro['modelo']
print(carro)
>>> {'marca': 'Ford', 'ano': 1964}
```

A palavra-chave `del` também pode apagar um dicionário completamente:

```python
carro = {
  "marca": "Ford",
  "modelo": "Mustang",
  "ano": 1964
}
del carro
print(carro) # causa um erro porque o dicionário 'carro' não existe mais.
```

O método `clear()` remove um dicionário:

```python
carro = {
  "marca": "Ford",
  "modelo": "Mustang",
  "ano": 1964
}
carro.clear()
print(carro)
>>> {}
```

### Copiar um Dicionário

Você não pode copiar um dicionário simplesmente digitando `dict2 = dict1` porque: `dict2` será somente uma referência para `dict1` e mudanças feitas em `dict1` serão automaticamente feitas em `dict2`.

Todavia existem formas de fazer uma cópia, uma delas é utilizando o método nativo `copy()`.

```python
carro = {
  "marca": "Ford",
  "modelo": "Mustang",
  "ano": 1964
}
copia_carro = carro.copy()
print(copia_carro)
>>> {'marca': 'Ford', 'ano': 1964}
```

Outra forma de fazer uma cópia é utilizando a função nativa `dict()`.

```python
carro = {
  "marca": "Ford",
  "modelo": "Mustang",
  "ano": 1964
}
copia_carro = dict(carro)
print(copia_carro)
>>> {'marca': 'Ford', 'ano': 1964}
```

### Dicionários Aninhados

Um dicionário também pode conter outros dicionários, isto é chamado dicionário aninhado.

No exemplo abaixo foi criado um dicionário que contém outros três dicionários.

```python
minha_familia = {
  "crianca1" : {
    "nome" : "Emil",
    "ano" : 2004
  },
  "crianca2" : {
    "nome" : "Tobias",
    "ano" : 2007
  },
  "crianca3" : {
    "nome" : "Linus",
    "ano" : 2011
  }
}
```

Ou, caso você queira aninhar três dicionários existentes:

```python
crianca1 = {
  "nome" : "Emil",
  "ano" : 2004
}
crianca2 = {
  "nome" : "Tobias",
  "ano" : 2007
}
crianca3 = {
  "nome" : "Linus",
  "ano" : 2011
}

minha_familia = {
  "crianca1" : crianca1,
  "crianca2" : crianca2,
  "crianca3" : crianca3
}
```

### O Construtor dict()

Também é possível usar o construtor `dict()` para criar um dicionário:

```python
carro = dict(marca="Ford", model="Mustang", ano=1964)
print(dicionario)
```

### Métodos de um Dicionário

Python possui uma série de métodos nativos que você pode utilizar com dicionários

- `clear()`: Remove todos os elementos de um dicionário
- `copy()`: Retorna a cópia de um dicionário
- `fromkeys()`: Retorna um dicionário com a chave e o valor especificado
- `get()`: Retorna o valor da chave especificada
- `items()`: Retorna uma lista contendo uma tupla para cada par chave valor
- `keys()`: Retorna uma lista contendo as chaves do dicionário
- `pop()`: Remove o elemento da chave especificada
- `popitem()`: Remove o último par chave valor
- `setdefault()`: Retorna o valor da chave especificada. Se a chave não existir: insere a chave com o valor especificado
- `update()`: Atualiza o dicionário com o par chave valor especificado
- `values()`: Retorna uma lista com todos os valores de um dicionário

### Desafio

O exercício a seguir foi retirado da plataforma de estudo HackerRank e serve como complemento para fixação dos conceitos apresentados aqui.

Exercício enviado por: [Shafaet Ashraf](https://www.hackerrank.com/profile/Shafaet)

Dado `n` nomes e telefones, crie uma lista telefônica que mapeie o nome das pessoas com o seu respectivo telefone. Os dados serão fornecidos via console.

### Formato de Entrada

A primeira linha contém um inteiro `n`, que representa o número de entradas na lista telefônica. Para cada uma das `n` linhas subsequentes haverá uma entrada representando o nome da pessoa, dois espaços e um telefone de 8 dígitos.
Depois das `n` linhas de entrada, haverá uma sequência de linhas com nomes. Para cada linha, procurar na lista telefônica o número da pessoa.

**Atenção:** Nomes são consistidos por letras do alfabeto em minúsculo, e são compostos só pelo primeiro nome.

### Formato de Saída

Depois de montada a lista telefônica, para cada linha de nome lido, imprima `Não encontrado` se o nome não estiver presente na lista, senão imprima o nome seguido do telefone no formato `nome=telefone`.

### Exemplo de Entrada

```shell
3
sam 99912222
tom 11122222
harry 12299933
sam
edward
harry
```

# Exemplo de Saída

```shell
sam=99912222
Não encontrado
harry=12299933
```

### Explicação

Faça um dicionário contendo `n=3` pares chave valor. De modo que a sua lista telefônica vai ficar algo parecido como:

`lista_telefonica = {(sam, 99912222), (tom, 11122222), (harry, 12299933)}`

Depois que cada nome é processado, alguns nomes são consultados nesta lista telefônica, caso o nome esteja na lista é impresso o nome seguido do telefone. Caso contrário imprimir `Não encontrado`.

Isso conclui uma introdução sobre tuplas e dicionários em Python, no próximo capítulo, você vai aprender mais sobre tratamento de erros.
