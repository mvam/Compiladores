# Compiladores

## Descrição do trabalho

O objetivo deste projeto é adquirir experiência prática na implementação de linguagens de programação por meio da construção de um compilador para uma linguagem procedimental simples, chamada de Cminus (ou C-). 

### O Projeto 

O projeto de construção de um compilador para C- está dividido em quatro etapas, cada uma desenvolvida e avaliada de forma independente:
(1) análise léxica, 
(2) análise sintática, 
(3) análise semântica, e 
(4) geração de código para a linguagem de montagem MIPS.

Cada estudante deverá implementar o seu compilador em C/C++, ou seja, na liguagem usada para implementar muitos compiladores de linguagens de programação reais.
Seu compilador poderá ser desenvolvido com ferramentas de geração automática de analisadores (por exemplo, Flex e Bison) ou programado sem apoio destas ferramentas, utilizando uma estratégia de análise sintática descendente em sua implementação.

- Parte I: Análise Léxica
- Parte II: Análise Sintática
- Parte III: Análise Semântica
- Parte IV: Geração de Código
- Parte V: Otimização de Código (opcional)

#### A Linguagem C-

A especificação da linguagem C- foi extraída e adaptada a partir do livro "Compiler Construction Principles and Practice" de Kenneth Louden. 

A linguagem C- é um subconjunto da linguagem C.
A linguagem inclui variáveis inteiras, funções e _arrays_. Permite declarações locais e globais, e inclui comandos de seleção (if-statement) e de repetição (while-statement), bem como chamadas de função recursivas.

A seguir, apresentamos as convenções léxicas de C-.

##### Convenções léxicas e descrição dos _tokens_  de C-.

1. São palavras-chave da linguagem: 

```
  else  if  int  return  void  while
```

Todas as palavras-chave são reservadas e devem ser escritas em letras minúsculas.

2. São símbolos especiais da linguagem:

``` 
+  -  *  /  <  <=  >  >=  ==  !=  =  ;  ,  (  )  [  ]  {  }  /*  */
```

3. Os _tokens_ *ID* e *NUM* são definidos pelas expressões regulares abaixo:

```
  ID = letter (letter | digit)*
  NUM = digit digit*
  letter = a | .. | z | A | .. | Z
  digit = 0 | .. | 9 
```

Há distinção entre letras maiúsculas e minúsculas.

4. Caracteres de espacejamento (_white space_) incluem  espaço em branco (' '), newlines ('\n'), e tabs ('\t). Esses caracteres são ignorados e servem para separar ID’s, NUM’s e palavras-chaves.

5. Comentários são definidos entre /* e */, 
como na linguagem C. Comentários podem ser usados nos mesmos pontos do programa em que caracteres de espacejamento aparecem 
(isto é, comentários não podem ser colocados dentro de _tokens_) e podem incluir mais de uma linha.
Comentários não podem ser aninhados. Comentários de uma linha, iniciados por "//" como na linguagem C,
não são válidos.


##### Sintaxe

Em breve.

#### Submissões

A forma de submissão será definida em breve.

#### Etapas

* [ ] Lexico
* [ ] Sintatico
* [ ] Semantico
* [ ] Gerar Código
* [ ] Otimização (opcional)
