# Primeiro Programa

Nesta seção você irá criar seu primeiro programa em Python, executá-lo e debugá-lo.

## Executando Python

Os programas Python sempre são executados em um intérprete de Python.

O intérprete é uma aplicação que funciona em seu terminal. Você pode rodá-lo, digitando `python` (dependendo da sua instalação, seu comando será `python3`)

```bash
python
Python 3.8.5 (default, Aug  9 2020, 03:46:11) 
[GCC 9.3.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>>
```

Os programadores geralmente não tem problemas em usar o interprete desta forma, embora não seja a forma mais cômoda para iniciantes.
Mais pra frente vamos propor o uso de ambientes de desenvolvimento mais sofisticados, mas nesse momento ficaremos com o incômodo que nos vai ensinar coisas úteis.

### Modo interativo

Quando executa Python, pode entrar no modo interativo para testar.

Se escrever um comando, esse vai ser executado imediatamente. Não há nenhum ciclo de edição-compilação-execução-debug nesse modo, como em outras linguagens.


```python
>>> print('hello world')
hello world
>>> 37 * 42
1554
>>> for i in range(5):
...     print(i)
...
0
1
2
3
4
>>>
```

Essa forma de escrever código (em um console da linguagem) que é executado imediatamente e imprime o resultado, é chamado de *REPL* (read-eval-print-loop), representando as suas funcionalidades, lê direto do teclado, executa o código, imprime o resultado num ciclo. Antes de continuar, certifique-se de que você poderá usar o REPL.

Vamos ver com mais detalhes como funciona este REPL:

- `>>>` é o símbolo do interprete para começar um novo comando.
- `...` é o símbolo do interprete para continumar com um comando começado antes. Deixe uma linha em branco para terminar o comando que começou antes.

O símbolo `...` pode ser mostrado ou não dependendo do seu entorno. No curso vamos utilizar linhas em branco para facilitar o copia-cola de pedaços de código.

O `_` guarda o último resultado.
O `print`, usado acima, serve para imprimir o valor na tela.

```python
>>> 37 * 42
1554
>>> _ * 2
3108
>>> _ + 50
3158
>>>
```

*Isso só é válido no modo interativo que estamos vendo. Não use o `_` fora do modo iterativo com essa finalidade.*

### Criar programas

Os programas são guardados em arquivos `.py`.

```python
# hello.py
print('hello world')
```

Pode criar estes arquivos com seu editor de texto favorito.

### Executar programas

Para executar um programa, execute no terminal o comando `python` (ou `python3` dependendo da sua instalação) seguido do nome do arquivo a ser executado. Por exemplo, em uma linha de comando Unix (quando usando Ubuntu, por exemplo):

```bash
$ python hello.py
hello world
```

O en una terminal de Windows:

```
C:\SomeFolder>hello.py
hello world

C:\SomeFolder>c:\python36\python hello.py
hello world
```

Obs: Em windows pode ser que seja necessário especificar o caminho (path) completo até o interprete de Python como em `c:\python36\python`.

No entando, se Python foi instalado do modo usual, pode ser possível digitar apenas o nome do programa como em `hello.py`.

Para utilizar como na linha de comando Ubuntu, no windows você deve adicionar uma variável de ambiente. Assim não precisará digitar o caminho completo toda vez que for executar.

Tenha em mente que com estes comandos está executando o código Python desde a linha de comando do seu sistema operacional. O código é executado, Python termina e o controle volta ao terminal, saindo do Python. Se precisar executar um arquivo e seguir dentro do interprete Python pode usar `python -i hello.py`.

Se está dentro do interprete Python e quer sair e voltar a linha de comando, pode fazer isso usando o comando `quit()` ou `exit()`.

### Um programa de exemplo

Vamos resolver o seguinte problema:

> Uma manhã qualquer, coloca um bilhete do lado do Cristo Redentor. A partir daí, cada dia vai até lá e duplica a quantidade de bilhetes, empilhando-os ordenadamente. Quanto tempo até a pilha de bilhetes ser mais alta que o Cristo Redentor?

Aqui vai a solução:

```python
# cristo_redentor.py
grossura_do_bilhete = 0.11 * 0.001 # 0.11 mm escrito en metros
altura_do_cristo = 38         # altura en metros
num_bilhetes = 1
dia = 1

while num_bilhetes * grossura_do_bilhete <= altura_do_cristo:
    print(dia, num_bilhetes, num_bilhetes * grossura_do_bilhete)
    dia = dia + 1
    num_bilhetes = num_bilhetes * 2

print('Quantidade de dias', dia)
print('Quantidade de bilhetes', num_bilhetes)
print('Altura final', num_bilhetes * grossura_do_bilhete)
```

Cuando lo ejecutás, la salida será la siguiente:

```bash
bash % python3 obelisco.py
1 1 0.00011
2 2 0.00022
3 4 0.00044
4 8 0.00088
5 16 0.00176
...
15 16384 1.80224
16 32768 3.60448
17 65536 7.20896
18 131072 14.41792
19 262144 28.83584
Quantidade de dias 20
Quantidade de bilhetes 524288
Altura final 57.67168
```

A seguir vamos usar esse primeiro programa como exemplo para aprender algumas coisas fundamentais sobre Python.

### Comandos

Um programa em Python é uma sequência de comandos:

```python
a = 3 + 4
b = a * 2
print(b)
```

Cada comando termina com uma nova linha. Os comandos são execudados um após o outro até que o interprete chegar ao final do arquivo.

### Comentários

Os comentários são textos no meio do código que não será executado

```python
a = 3 + 4
# Isso é um comentário
b = a * 2
print(b)
```

Os comentários começam com `#` e seguem até o final da linha.

### Variáveis

Uma váriavel é um nome para um valor. Esses nomes podem ser formados por letras (maiúsculas e minúsculas) de a á z. Também podem incluir `_`, e podem usar números (exceto no início do nome).


```python
altura = 442 # válido
_altura = 442 # válido
altura2 = 442 # válido
2altura = 442 # inválido
```

### Tipos

O tipo das variáveis não deve ser declarado como em outras linguagens. O tipo está associado com o valor do lado direito (do igual).

```python
height = 442           # Inteiro
height = 442.0         # Ponto flutuante
height = 'Really tall' # Cadeira de caracteres (string)
```

Dizemos que Python é tipado dinamicamente. O tipo percebido pelo intérprete pode mudar durante a execução dependendo do valor dado a variável.

### Python distingue maiúsculas e minúsculas

Maiúsculas e minúsculas são diferentes para o Python. Por exemplo, todas as variáveis seguintes são diferentes.

```python
name = 'David'
Name = 'Diego'
NAME = 'Rosita'
```

Os comandos de Python sempre são escritos com minúsculas

```python
while x < 0:   # OK
WHILE x < 0:   # ERROR
```

### Laços (ciclos)

O comando `while` executa um ciclo, o *loop*.

```python
while num_bilhetes * grossura_do_bilhete <= altura_do_cristo:
    print(dia, num_bilhetes, num_bilhetes * grossura_do_bilhete)
    dia = dia + 1
    num_bilhetes = num_bilhetes * 2

print('Quantidade de dias', dia)
```

Os comandos indentados debaixo do `while` vão ser executados enquanto a expressão depois do `while` for verdadeira (`true`).

### Indentação (Neologismo usado para se referir ao recuo)

A indentação é usada para marcar grupos de comandos que estão juntos.
Considere o exemplo anterior:

```python
while num_bilhetes * grossura_do_bilhete <= altura_do_cristo:
    print(dia, num_bilhetes, num_bilhetes * grossura_do_bilhete)
    dia = dia + 1
    num_bilhetes = num_bilhetes * 2

print('Quantidade de dias', dia)
```

A indentação agrupa os comandos seguintes como as operações que serão repetidas:

```python
    print(dia, num_bilhetes, num_bilhetes * grossura_do_bilhete)
    dia = dia + 1
    num_bilhetes = num_bilhetes * 2
```

Como o comando `print()` do final não está indentado, não pertence ao ciclo. A linha em branco que deixamos entre ambos só está para facilitar a leitura e não afeta a execução.

### Indentando adequadamente

Algumas recomendações sobre como indentar:

* Use espaços ao invés do tab.
* Use 4 espaços para cada nível.
* Use um editor de texto que entenda que está sendo escrito código Python.

O único requisito do interprete de Python é que a indentação dentro do mesmo bloco seja consistente. Por exemplo, isto é um erro:

```python
while num_bilhetes * grossura_do_bilhete <= altura_do_cristo:
    print(dia, num_bilhetes, num_bilhetes * grossura_do_bilhete)
      dia = dia + 1 # ERRO
    num_bilhetes = num_bilhetes * 2
```

### Condicionais

O comando `if` é usado para executar uma condicional:

```python
if a > b:
    print('a ganha')
else:
    print('b ganha')
```

Pode verificar mútiplas condições agregando condições extras com `elif`.

```python
if a > b:
    print('a ganha')
elif a == b:
    print('Empate!')
else:
    print('b ganha')
```

O comando `elif` vem de *else, if* e pode ser traduzido como "Se a condição do if anterior é falsa, verifica se a seguinte é verdadeira".

### Imprimir na tela

A função `print` imprime uma linha de texto com o valor passado como parâmetro.

```python
print('Hello world!') # Imprime 'Hello world!'
```

Pode imprimir variáveis. O texto impresso nesse caso será o valor da variável e não o seu nome.

```python
x = 100
print(x) # imprime el texto '100'
```

Se passar mais de um valor ao `print`, esses serão separados por espaços.

```python
name = 'Joana'
print('Meu nome é', name) # Imprime o texto 'Meu nome é Joana'
```

`print()` sempre termina a linha impressa passando para a linha seguinte.

```python
print('Olá')
print('Meu nome é', 'Joana')
```

This prints:

```code
Olá
Meu nome é Joana
```

A quebra de linha entre os comandos pode ser suprimida:

```python
print('Ola', end=' ')
print('Meu nome é', 'Joana')
```

Este código va a imprimir:

```code
Olá Meu nome é Joana
```

### Entrada de valores pelo teclado

Para ler um valor digitado pelo usuário, use a função `input()`:

```python
name = input('Digite seu nome: ')
print('Seu nome é', name)
```

`input` imprime o texto passado como parâmetro e espera uma resposta. É útil para programas pequenos, exercícios ou para debugar um código. Quase não é usado em programas reais.

### O comando pass

As vezes é conveniente especificar um bloco de código que não faça nada. O comando `pass` serve para isso.

```python
if a > b:
    pass
else:
    print('a não ganhou')
```

Esse comando não faz nada. Serve para guardar o lugar para comandos que queremos adicionar depois (ou para não fazer nada mesmo, em alguns casos).

## Exercícios

### Exercício 1.4: Debugar
O seguinte trecho de código está relacionado com o problema do Cristo. Tem um bug, quer dizer, um erro.

```python
# cristo_redentor.py

grossura_do_bilhete = 0.11 * 0.001 # 0.11 mm escrito en metros
altura_do_cristo = 38         # altura en metros
num_bilhetes = 1
dia = 1

while num_bilhetes * grossura_do_bilhete <= altura_do_cristo:
    print(dia, num_bilhetes, num_bilhetes * grossura_do_bilhete)
    dia = dias + 1
    num_bilhetes = num_bilhetes * 2

print('Quantidade de dias', dia)
print('Quantidade de bilhetes', num_bilhetes)
print('Altura final', num_bilhetes * grossura_do_bilhete)
```

Copia e cola o código em um arquivo chamado `cristo_redentor_2.py`. Quando executar o código vai receber a seguinte mensagem de erro que faz o programa não funcionar:

```code
Traceback (most recent call last):
  File "cristo_redentor_2.py", line 10, in <module>
    dia = dias + 1
NameError: name 'dias' is not defined
```

Aprender a ler e entender as mensagens de erro é uma parte funamental de programar em Python. Se seu programa der erro a últuma linha da mensagem de erro indica o motivo. Sobre isso, vai ver um trecho de código, um nome de arquivo e um número de linha que identifica o problema.

* Em qual linha está o erro?
* Qual é o erro?
* Conserta o erro
* Executa o programa com sucesso

---------

Esse conteúdo é uma tradução do curso de Python da [UNSAM](https://github.com/python-unsam/UNSAM_2020c2_Python)

---------
