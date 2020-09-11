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

As pessoas programadoras geralmente não tem problemas em usar o interprete desta forma, embora não seja a forma mais cômoda para iniciantes.
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

Em um terminal de Windows:

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
# cristo.py
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

---------

Esse conteúdo é uma tradução do curso de Python da [UNSAM](https://github.com/python-unsam/UNSAM_2020c2_Python)

---------
