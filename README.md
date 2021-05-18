# Relatório Técnico de Conclusão de Curso 
### Faculdade de Tecnologia Jessen Vidal - Fatec São José dos Campos


## Análise estatística descritiva e Regressão da Inserção das Mulheres nos cursos de TI nos anos de 2009 a 2018.

Análise de dados do Censo da Educação Superior - INEP, utilizando a biblioteca Pandas no jupyter notebook, para analisar o número de mulheres inseridas nos cursos de TI nos anos de 2009 a 2018  e um estudo em regressão, para traçar a tendência da taxa de crescimento da inserção dos alunos nos cursos de Tecnologia da Informação (TI) nesse mesmo período.

Dados Brutos: https://www.gov.br/inep/pt-br/acesso-a-informacao/dados-abertos/microdados/censo-da-educacao-superior

## Recomendações para o uso:


iniciar > CMD > enter

pip install -r requirements.txt

jupyter notebook

Veja os notebooks no diretório que acabou de baixar, tem a extensão ipynb


- Caso escolha Docker

iniciar > CMD > enter

```
make start

```

## Definição do problema
### Desigualdade de gênero na área da Tecnologia da Informação

- Os cursos da área de Tecnologia, são majoritariamente ocupados por homens. [1]

- Entre a década de 1960 e 1970 houve um crescimento dos cursos na área da computação e a crescente participação das mulheres. [2][3]

- A partir de 1980, iniciou-se a construção de estereótipos e identidades que associavam a computação ao universo masculino e a cultura geek. [2][3]

- Pesquisa realizada pela Empresa de consultoria Yoctoo[4:

    - 82,8% das mulheres entrevistadas relata ter vivido, ou ainda vivenciar, preconceito de gênero dentro do seu ambiente de trabalho. 
    - Em relação à área acadêmica, 61,8% assegura ter vivido ou vivência este preconceito. 
    - O  estudo  realizado  pela  empresa  de  consultoria  é  bastante  revelador,  trazendo outros importantes números: 91% das entrevistadas afirmam que ainda existe preconceito dentro  das  empresas  e que  essas  ainda  estão  dando  os  primeiros  passos  direcionados  à implementação  de  políticas  de  diversidade  e  inclusão;
    - 72%  afirmam  que  o  ambiente familiar não costuma estimular meninas a gostarem de brincadeiras ou carreiras ligadas à tecnologia;
    - 42%  das  participantes  afirmam  que  o  maior  desafio  é  ter  de  provar  a  todo tempo que são profissionais competentes; 


## Desenvolvimento

### Método Knowledge Discovery in Databases (KDD)
![kdd](https://github.com/arcursino/tcc/blob/main/imagens/kdd.png)

### Pré-Processamento e Formatação
- Linguagem de programação Python 3.

- Bibliotecas de suporte Pandas, Numpy, Matplolib, Seaborn, Statsmodels.

- Aplicativo da web Jupyter Notebook.

- O volume de dados de 10 anos da educação superior é muito grande. 

- Filtro com os seguintes termos: “Computação”, “Tecnologia da Informação”, “Informática” e “Análise de Desenvolvimento de Sistemas”

### Mineração e Análise dos Dados
- Contagem de alunos por curso e as medidas de tendência central. 
- Cruzamento dos dados divididos por gênero e por idade, assim como a porcentagem de mulheres e homens nos cursos. 
- Cruzamento dos dados por gênero e por ano - Inserção das mulheres na área ao longo dos anos analisados. 
- Relação dos dados e sua causualidade, a correlação e a covariância. 
- Gráfico de dispersão e, com o apoio da biblioteca Statmodels, os gráficos de regressão da taxa de crescimento dos homens e das mulheres nos cursos de TI. 
- Para validar o modelo, foi utilizada a biblioteca sklearn.metrics, para o cálculo dos erros médios.


## Resultados e Discussões

- Dataframe final conta com os dados de 1.217.117 alunos, sendo a idade mínima de 13 anos e a máxima de 84 anos.

- Medidas Centrais:

![medidas centrais](https://github.com/arcursino/tcc/blob/main/imagens/medidas_centrais.png)

- O Histograma da idade dos alunos:
![histograma](https://github.com/arcursino/tcc/blob/main/imagens/histograma.png)

**75% dos alunos estão na região de 20 a 30 anos.**

- Recorte de Gênero:
![Tabela](https://github.com/arcursino/tcc/blob/main/imagens/recorte_genero.png)
![Gráfico](https://github.com/arcursino/tcc/blob/main/imagens/recorte_genero_grafico.png)

- Correlação e a covariância em relação a taxa de porcentagem do crescimento da inserção por gênero ao longo dos anos:
![cor_var](https://github.com/arcursino/tcc/blob/main/imagens/cor_var.png)

- Regressão para verificar se uma variável independente (Ano),  tem relação com uma variável dependente (Número de alunos por sexo e por ano):
![homem](https://github.com/arcursino/tcc/blob/main/imagens/regressao_homem.png)

- Regressão para verificar se uma variável independente (Ano),  tem relação com uma variável dependente (Número de alunas por sexo e por ano):
![mulher](https://github.com/arcursino/tcc/blob/main/imagens/regressao_mulheres.png)

## Validação do Modelo


- O R2 em ambas regressões linear e polinomial foi de 0,959 e 0,989, respectivamente. Nesse caso afirma-se que 96% e 99%, respectivamente das variações do ano podem ser explicadas com base na variação do número de alunos inseridos nos cursos.

- Indicando que ambas as regressões apresentam ótimo modelo para predizer a taxa de crescimento dos homens e das mulheres nos anos de 2008 a 2019.


- Para a regressão linear, os valores encontrados de rmse e de mae foram 0,34 e 0,26, respectivamente, para ambos os gêneros.

- Para a regressão polinomial os valores foram 0,18 e 0,15, respectivamente, para ambos os gêneros. Novamente a regressão polinomial apresentou valores menores de erro em relação a regressão linear.

## Conclusão
- A análise empreendida aqui busca analisar a participação das mulheres nos cursos da tecnologia da informação a partir da categoria gênero, realizando para isso uma análise descritiva dos dados. 

- Tal análise evidencia o comportamento e o fluxo da inserção dos alunos ao longo dos anos. Observa-se que o número de mulheres nos cursos da área de TI, está cada vez mais diminuindo. Análises similares foram encontrados em estudos do curso de Ciências da Computação de Moreira, Silva e Carvalho[6] na UFPB e de Santos[1], no IME-USP.

- As administrações educacionais devem usar esses dados com a intenção de criar métodos para evitar a redução da procura dos cursos por mulheres e torná-los mais atraentes e inclusivos para o público feminino. 

- Na tomada dessas decisões, é necessário criar indicadores e destacar os pontos relevantes para a coordenação do curso.

- Para trabalhos futuros, recomenda-se que se utilizem fatores relacionados ao tema, para estabelecer um modelo preditivo com maior consistência e maior precisão, verificando assim a relação da diminuição da inserção das mulheres nos cursos de TI, a outros fatores relacionados à área.

## Referências Bibliográficas
[1] SANTOS, C. M. Por que as mulheres ‘desapareceram’ dos cursos de computação?. Jornal da USP, 2018. Disponível em: https://jornal.usp.br/universidade/por-que-as-mulheres-desapareceram-dos-cursos-de-computacao. Acesso em 10/08/2020.

[2] ABBATE, J. The Pleasure Paradox: Bridging the Gap between Popular Images of Computing and Women´s Historical Experiences. In: SOUZA, T. P de. Seminário Internacional Fazendo Gênero. Congresso, Florianópolis, 2017. Disponível em: https://bit.ly/37oKgyJ Acesso em 01/06/2020.

[3] HAYES, C. C. Computer Science: The incredible shrinking Woman. In: SOUZA, T. P de. Seminário Internacional Fazendo Gênero. Congresso, Florianópolis, 2017. Disponível em: https://bit.ly/37oKgyJ Acesso em 01/06/2020.

[4] YOCTOO, 2019, in: SILVA, José; OLIVEIRA, Letícia; SILVA, André. Meninas na Computação: uma análise inicial da participação das mulheres nos cursos de Sistemas de Informação do estado de Alagoas. In: Anais do XXVII Workshop sobre Educação em Computação. SBC, 2019. p. 444-452.

[5] FAYYAD, U.; PIATETSKY-SHAPIRO, G.; SMYTH, P. From data mining to knowledge discovery in databases. AI magazine, v. 17, n. 3, p. 37-37, 1996.

[6] MOREIRA, J. A.; SILVA, R. M.; CARVALHO, M. E. P. Cenários Prospectivos: Uma Visão do Futuro da Presença Feminina em Cursos de Ciência da Computação de uma Instituição de Ensino Superior. In: Anais do XXVI Workshop sobre Educação em Computação. SBC, 2018.