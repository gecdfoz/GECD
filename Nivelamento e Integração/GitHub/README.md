Introdução ao Git e ao GitHub
=============================

O *Git* é um software de [controle de
versões](https://www.devmedia.com.br/sistemas-de-controle-de-versao/24574)
que tem como objetivo gerenciar arquivos texto, principalmente códigos
de programação. O funcionamento dessa ferramenta é semelhante aos
sistemas de nuvens (Google Drive, Dropbox, Mega, etc), em que podemos
compartilhar as edições de um script com uma equipe, além de retomar
antigas versões de nossos arquivos. Resumidamente, o
[*Git*](https://www.atlassian.com/br/git/tutorials/what-is-git) examina
as mudanças realizadas nos arquivos de um diretório e vai guardando
essas informações para compartilhar com outros usuários e/ou
possibilitar a reversão de alterações realizadas. Além de ser uma
ferramenta extremamente útil, o *Git* se conecta ao serviço de
hospedagem e armazenamento de versões chamado
[*GitHub*](https://github.com/). A partir do *GitHub* é possível
contribuir com projetos de qualquer lugar do mundo, além de compartilhar
os nossos próprios códigos com fins de divulgação e/ou colaboração.

Existem diversas maneiras de trabalhar com o Git e o GitHub. Aqui você
poderá eleger algumas opções para aprender!

<img src="https://raw.githubusercontent.com/coderjojo/coderjojo/master/img/github.gif" width="312" />

1.  (Git e GitHub com o RStudio)\[\].

2.  Git e GitHub com o Python.

  

Como funciona o controle de versões?
------------------------------------

O Git é um exemplo de sistema de controle de versão distribuído (DVCS)
comumente utilizado para código aberto e desenvolvimento de softwares.
Os DVCSs permitem acesso total a todos os arquivos, ramificações e
iterações de um projeto e permitem que todos os usuários acessem um
histórico completo e independente de todas as alterações.

Ao utilizar o Git você poderá, basicamente, enviar novas versões de um
projeto para um repositório (um servidor em outras palavras) onde os
seus arquivos ficarão armazenados e o histórico de suas versões salvas.
Nesse caso, o nosso repositório será no GitHub. Todos os
colaboradores/desenvolvedores podem acessar e resgatar a última versão
disponível do projeto no GitHub e fazer uma cópia em suas máquinas
locais (o seu próprio computador), na qual poderão trabalhar em cima
dela e continuar o processo de desenvolvimento paralelamente aos demais
colegas. A cada alteração realizada, é possível enviar as suas
alterações para o repositório e atualizar a sua versão a partir de
outras feitas pelos demais desenvolvedores.

**Por exemplo**: Vamos supor que você iniciou a sua participação em um
projeto já em andamento e hospedado no GitHub. Inicialmente, você
precisará baixar a última versão do projeto na sua máquina
(`git clone`). Ao longo do tempo, você irá trabalhar nesse projeto de
maneira individual aos seus colegas, ou seja, você vai pegar o projeto
em uma determinada etapa e começara a fazer as suas alterações a parte
dos demais. Para tal, você criará uma `branch` (braços ou ramificações)
a partir do projeto principal (o `trunk,` chamado de `branch master`).
Outros desenvolvedores também farão alterações e as salvarão
(`git commit`) em suas próprias branches.

Ao finalizar a sua parte do projeto, você irá realizar um merge da sua
branch com a branch master, e dará um pull request para avisar a todos
os colegas que uma etapa do projeto já está pronta. Quando um colega for
enviar a parte dele para o repositório (`git commit` e `git push`), o
Git irá alertá-lo que a versão dele está desatualizada (ele ainda não
baixou o que você enviou para o repositório) e pedirá que o colega
atualize/baixe a nova versão em sua própria máquina (`git pull`). O git
enviará as novas informações adicionadas para o seu colega e permitirá
mesclar as diferentes versões (a do seu colega com o branch master)
(`git merge`). Não apenas isso, ele também mostrará onde foram feitas
atualizações, trechos de código incluídos ou removidos e casos de
conflito, onde linhas podem se sobrescrever e oferecerá opções para
mesclar manualmente, escolhendo a melhor solução.

![Exemplo de funcionamento do Git e
GitHub.](figuras/resumo_git_github.svg)

  

Termos importantes
------------------

Para usar o Git, os desenvolvedores usam comandos específicos para
copiar, criar, alterar e combinar código. Esses comandos podem ser
executados diretamente da linha de comando do Git ou usando um
aplicativo como o GitHub desktop ou o RStudio. Aqui estão os comandos
mais comuns para usar o Git:

-   `git init` inicializa um novo repositório Git e começa a rastrear um
    diretório existente. Ele adiciona uma subpasta oculta dentro do
    diretório existente com a finalizadade de hospedar a estrutura de
    dados interna necessária para o controle de versões.

-   `git ignore` especifica arquivos que não serão rastreados, ou seja,
    os arquivos que o Git deve ignorar.

-   `git clone` cria uma cópia local (na sua máquina) de um projeto que
    já existe remotamente. O clone inclui todos os arquivos, histórico e
    branches do projeto. Ao clonar um repositório, as alterações que
    você realizar não entrarão no projeto principal se não for
    sequênciada de um `fork` ou estiver associada por um `branch`.

-   `git status` mostra o status das alterações dos arquivos.

-   `git branch` são ramificações de trabalho que permitem edições em
    paralelo em nosso arquivo, sem alterar o projeto principal
    (`branch master`) até o momento que quisermos assim. Em geral, um
    branch de desenvolvimento é uma bifurcação do estado do código que
    cria um novo caminho para a evolução do mesmo (vide figura abaixo).
    As branches podem estar relacionadas a distintos tipos de trabalho
    que compõem o nosso projeto (ex. introdução, métodos, resultados e
    discussão).

-   `git merge` é a união de duas brances, normalmente realizadas na
    branch master. No exemplo do trabalho, séria unir as diferentes
    partes (introdução, métodos, resultados e discussão) em um só
    arquivo.

-   `git pull`atualiza a linha local de desenvolvimento com atualizações
    de sua contraparte remota. Os desenvolvedores usam este comando se
    um colega de equipe fez commits para um branch em um remoto e
    gostariam de refletir essas mudanças em seu ambiente local.

-   `git push` atualiza o repositório remoto com quaisquer commits
    feitos localmente para um branch.

Saiba mais em [um guia de referência completo para comandos
Git](https://git-scm.com/docs).

  

O que é um repositório GitHub?
------------------------------

Um repositório, ou um projeto Git, é todo o acervo de arquivos e pastas
associados a um projeto, somado ao histórico de versões de cada arquivo.
Cada vez que salvamos uma alteração em um arquivo (ou *commitamos*),
geramos um histórico de alterações para esse objeto. Todas as versões
criadas são listadas pelo Git e podem ser organizadas em várias linhas
de desenvolvimento chamadas *Branches*. Já o “Hub”é um aparelho
utilizado na área de informática que permite a conexão de computadores a
uma rede para compartilhar informação, sendo a nomenclatura em “GitHub”
associada a conexão entre profissionais de programação de qualquer lugar
do mundo.

Para utilizar o GitHub [é necessário criar uma conta pessoal ou uma
conta de equipe](https://github.com/). Para criar a sua conta, entre no
[GitHub](https://github.com/) e preencha os dados solicitados — nome,
e-mail e senha. Em alguns minutos, você vai receber um e-mail de
confirmação para começar a utilizar a plataforma. Além das contas
individuais e gratuitas, também existem aquelas destinadas a trabalhos
em equipe e que são pagas.

Após confirar o seu e-mail para o GitHub, você estará livre para
explorar a ferramenta. Para isso você pode utilizar o guia [Hello World
Guide](https://guides.github.com/activities/hello-world/) que o
orientará como criar o seu primeiro *repositório*, fazer um *branch* ou
abrir um *pull request*.

  

Mas porque usar o controle de versões?
--------------------------------------

([tradução livre dos comentários em “Why should I use version
control?”](https://stackoverflow.com/questions/1408450/why-should-i-use-version-control))

<img src="figuras/varios_arquivos.png" width="295" />

Você já:

-   Teve que manter várias versões de um produto? 👆
-   Fez uma alteração no código, percebeu que era um erro e queria
    voltar atrás?
-   Perdeu o código ou tinha um backup muito antigo?
-   Queria ver a diferença entre duas (ou mais) versões do seu código?
-   Queria provar que uma determinada alteração quebrou ou consertou um
    trecho de código?
-   Quer revisar a história de algum código?
-   Deseja enviar uma alteração no código de outra pessoa?
-   Deseja compartilhar seu código ou permitir que outras pessoas
    trabalhem nele?
-   Queria ver quanto trabalho está sendo feito e onde, quando e por
    quem?
-   Deseja experimentar um novo recurso sem interferir no código de
    trabalho?

Nestes casos, e sem dúvida em outros, um sistema de controle de versão
deve tornar sua vida mais fácil.

![](https://media.tenor.com/images/5e43669b9573fea08ede20a5bbbbe2df/tenor.gif)

Mesmo se você trabalha sozinho/a, pode se beneficiar do Git. Entre
outros, pelos seguintes motivos:

-   Você não perde nada. Você pode excluir frações do seu código e
    recuperá-los após algum tempo verificando commits antigos.

-   Você pode experimentar à vontade. Se não resolver o problema, é só
    reverter o que foi feito.

-   Você pode consultar as versões anteriores do seu código para
    descobrir quando e onde os bugs foram introduzidos.

-   Recursos mais “avançados”, como ramificação e mesclagem, permitem
    que você tenha várias linhas paralelas de desenvolvimento. Você pode
    trabalhar em dois recursos simultâneos sem interferência e alternar
    para frente e para trás sem muito trabalho.

-   Você pode ver “o que mudou”. Isso pode parecer básico, mas é algo
    que me fazemos com frequência. Muitas vezes, começamos o fluxo de
    trabalho individual com uma pergunta: o que eu fiz ontem?

Vá em frente e experimente. Comece devagar com os recursos básicos e
aprenda outros à medida que avança. Você logo descobrirá que nunca mais
vai querer voltar à “idade das trevas”.

Convencido/a? Bem-vinde ao clube!

  

Cursos disponíveis nesse repositório
====================================

1.  Introdução ao Git e Github com o GitHub desktop
2.  Introdução ao Git e GitHub com o RStudio
