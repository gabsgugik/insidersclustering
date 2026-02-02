# Programa de Fidelidade com Clusterização

## Descrição

A empresa All in One trabalha com vendas Outlet Multimarcas através de um e-commerce.
Em pouco mais de 1 ano de operação, o time de marketing percebeu que alguns clientes
da sua base compram produtos mais caros, com alta frequência e acabam contribuindo
com uma parcela significativa da empresa.

Baseado nessa percepção, o time de marketing vai lançar um programa de fidelidade
para os melhores clientes da base, chamado Insiders. Para isso foi solicitado ao 
time de dados uma seleção de clientes elegíveis ao programa, utilizando técnicas
avançadas de manupulação de dados.


## Objetivo

O objetivo desse projeto é realizar a clusterização dos clientes da base utilizando
algoritmos de machine learning, como o objetivo de segmentar os clientes que trazem
maior retorno para empresa em um grupo premium chamado Insiders, para fim de inserí-los
em um programa de fidelidade. 


# Planejamento da solução

## Produto final

O produto final será composto pelos seguintes items:

- A criação de um modelo treinado utilizando o algoritmo que apresentar a melhor
performance de clusterização no grupo Insideres.

- Os notebooks nos quais é possível observar todo o procoesso de criação da solução.

- Um Relatório contendo várias questões sobre o cluster Insiders, solicitado pelo time de negócio.


## Algoritmos testados

### Embedding:
Algoritmos: PCA, UMAP, t-SNE, Tree-Based Embedding

### Clusterização:
Algoritmos: K-Means, GMM, Hierarquical Clustering, DBSCAN 

Métricas de performance: Silhouette Score, WSS

## Ferramentas utilizadas
Python, Scikit-learn

# Desenvolvimento


## Estratégia da solução
O projeto foi desenvolvido utilizando a Linguagem Python, utlizando a
biblioteca Pandas para manipulação dos dados e biblioteca Seaborn para
exibição dos gráficos. 

Foram utilizadas as bibliotecas Scikit-learn, K-Means para a clusterização dos clientes, além do
algoritmo UMAP para o embedding dos dados.


## O passo a passo
Passo 1: Divisão dos dados em treino e teste, além de efetuar estatística
descritiva nos dados a fim de compreensão dos mesmos.

Passo 2: Filtragem de Variávies, Limpeza de colunas e Linhas no Dataset.

Passo 3: Feature Engeenering.

Passo 4: Análise Exploratória dos Dados e aplicação de Embedding no conjunto de dados.

Passo 5: Preparação dos dados, efetuando as normalizações, encodings e transformações
de natureza necessárias

Passo 6: Feature selection: determinar quais as features mais representativas para uso dos
modelos de Machine Learning.

Passo 7: Treino dos algoritmos de Clusterização, comparando a performance utilizando a métrica de Silloute Score. 

Passo 8: Treinamento final do algortimo com melhor performance utilizando os melhores parâmetros.

Passo 9: Análise dos Clusters encontrados, evidenciando os dados do Cluster mais promissor Insiders. 

Passo 10: Respostas das questões requisidas pelo time de negócios sobre o cluster Insiders.



# Perguntas de Negócio

1. Quem são as pessoas elegíveis para participar do programa de Insiders?  
Os clientes que foram agrupados no cluster 4.   


2. Quantos clientes farão parte do grupo?  
964 clientes

3. Quais as principais características desses clientes?
- Número de customers: 964 ( 16% do customers )
- Faturamento médio: 5542
- Recência média: 7 dias
- Média de Produtos Comprados: 424 produtos
- Frequência de pedidos: 0.05 compras/dia - um pedido a cada 20 dias
- Receita em média: $ 5542,56 dólares

4. Qual a porcentagem de contribuição de faturamento, vinda dos Insiders?  
52 % do faturamento total.

5. Qual a expectativa de faturamento desse grupo para os próximos meses?  
A Clusterização foi realizada considerando os dados durante todo o período observado, sem a distinção do mês. Para ser possível obter uma expectativa mensal futura de faturamento do cluster Insiders seria necessário um desdobramento do projeto principal, no qual seria aplicada a clusterização observando os dados mensalmente através do uso de séries temporais.

6. Quais as condições para uma pessoa ser elegível ao Insiders?  
Não é possível determinar as condições de forma objetiva, pois é o modelo de machine learning que determina internamente as condições de uma pessoa ser elegível ao Insiders. O que pode ser observado é que as pessoas do grupo Insiders tendem a gastar mais na soma de suas compras, mas outras variavés como quantidade de produtos, frequência e recência também podem influenciar uma pessoa pertencer ou não no grupo Insiders.

7. Quias as condições para uma pessoa ser removida do Insiders?  
Não é possível determinar as condições de forma objetiva, pois é o modelo de machine learning que determina internamente as condições de uma pessoa ser elegível ao Insiders. O que pode ser observado é que as pessoas do grupo Insiders tendem a gastar mais na soma de suas compras, mas outras variavés como quantidade de produtos, frequência e recência também podem influenciar uma pessoa pertencer ou não no grupo Insiders.


8. Qual a garantia que o programa Insiders é melhor que o restante da base?  
Seriam necessários testes adicionais, como testes A|B, para avaliar o resulto prático da escolha do cluster em questão. Entrentao, é possível observar que o gross revenue do cluster Insiders correspondem a 52% da receita total, contendo somente 16% do total de clientes da base.


9. Quais as ações o time de marketing pode realizar para aumentar o faturamento?  
O primeiro passo seria analisar as principais características de cada cluster, comparando-as com as características do cluster Insiders. Em seguida estudar como aproximar cada cluster do cluster Insiders. Por fim adotar estratégias específicas para os clientes conforme os clustes que eles pertencem.


# Próximos Passos

1. Publicar o modelo em uma nuvem como por exemplo a AWS, e configurar o script para que o modelo refaça a clusterização de forma periódica automaticamente, a fim de acompanhar a evolução dos clientes e faturamento no cluster Insiders.

2. Executar várias clusterizações analisando os dados mensalmente utilizando séries temporais, a fim que seja possível efetuar previsões de faturamento para os meses futuros no grupo dos Insiders.

3. Elaborar testes A|B nos quais seja possível verificar se o faturamento obtido
com a clusterização está gerando o retorno esperado.