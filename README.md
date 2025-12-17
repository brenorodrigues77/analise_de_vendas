# Análise de Vendas de Supermercados de Curitiba

Este projeto tem como objetivo analisar dados de preços de produtos em diferentes supermercados de Curitiba, utilizando Python, pandas e matplotlib. O foco está em responder perguntas relevantes sobre variação de preços, custo de cesta básica, diferenças regionais e oportunidades de economia para o consumidor.

## Estrutura do Projeto

- **analise_dos_dados.ipynb**: Notebook principal com toda a análise exploratória, visualizações e respostas às perguntas de negócio.
- **files/df_format.csv**: Base de dados utilizada para as análises, contendo informações de produtos, preços, mercados, endereços, categorias, etc.

## Principais Perguntas Respondidas

- Quais mercados oferecem os preços mais baixos em geral?
- Existe uma diferença significativa de preços entre mercados de diferentes regiões da cidade?
- Quais produtos têm maior variação de preço entre os mercados?
- Quais categorias de produtos têm maior variação de preço?
- Quais produtos são consistentemente mais caros ou mais baratos?
- Existe uma correlação entre a localização do mercado e o preço médio dos produtos?
- Qual é o custo médio de uma cesta básica em diferentes mercados?

## Exemplos de Análises Realizadas

- Cálculo do preço médio por mercado e por bairro
- Análise de variação de preços por produto e categoria
- Visualização dos dados com gráficos de barras, pizza e boxplots
- Comparação do custo da cesta básica entre mercados
- Identificação de produtos com preços zerados ou inconsistentes

## Como Executar

1. Clone este repositório.
2. Instale as dependências necessárias (pandas, numpy, matplotlib).
3. Abra o notebook `analise_dos_dados.ipynb` no VS Code ou Jupyter.
4. Execute as células para reproduzir as análises.

## Estrutura dos Dados

O arquivo CSV contém as seguintes colunas principais:
- `data_pesquisa`: Data da coleta do preço
- `id_empresa`: Identificador do mercado
- `rede`: Nome do supermercado
- `endereco_completo`: Endereço do mercado
- `codigo_categoria`: Código da categoria do produto
- `descricao`: Nome e detalhes do produto
- `preco_regular`: Preço do produto
- `bairro`: Bairro do mercado
- `categoria`: Nome da categoria do produto

## Possíveis Extensões

- Análise temporal (caso haja dados de diferentes datas)
- Inclusão de preços promocionais
- Comparação entre marcas
- Sugestão de rotas de compras mais econômicas

