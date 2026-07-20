<div align="center">

# 📊 PROJETO AVALIATIVO: ANÁLISE DE DADOS & BUSINESS INTELLIGENCE

> *“Transformando dados brutos em inteligência corporativa e tomada de decisão estratégica.”*

</div>

---

## 🎯 1. Objetivo do Projeto

Este projeto dedica-se à análise de dados extraídos da base de dados **The Oracle Human Resources (HR)**. O objetivo foi acessar e extrair os dados via SQL, estruturar as consultas do projeto, exportar os resultados em arquivos `.csv` e realizar a Análise Exploratória de Dados (AED) em ambiente Python.

A base de dados possui **7 tabelas relacionais** (`Employees`, `Departments`, `Jobs`, `Job_History`, `Locations`, `Countries` e `Regions`), estruturadas a partir de dados de uma empresa multinacional.

---

## 🔍 2. Como os dados foram buscados

Os dados foram obtidos por meio de consultas relacionais em SQL (`SQL/query01.sql` e `SQL/query02.sql`), extraindo informações essenciais da base corporativa disponível em `freesql.com`.

Utilizou-se a biblioteca `oracledb` no VS Code para o acesso direto aos dados via notebook. Posteriormente, os dados foram tratados e exportados para arquivos locais (`Dados/query_01.csv` e `Dados/query_02.csv`), dando início à AED na seguinte ordem de fluxo:

* Diagnóstico, limpeza e preparação dos dados;
* Análise exploratória básica;
* Cálculo das métricas estatísticas (`mean`, `median`, `min`, `max`, `std`, `var`);
* Criação de tabelas formatadas com a biblioteca `tabulate` para melhor visualização e validação dos dados;
* Geração de gráficos e aplicação de análises estatísticas para avaliar as hipóteses do estudo.

---

## 🧹 3. Como a base foi tratada

No ambiente Python, a base de dados passou por etapas essenciais de preparação:

* **Limpeza e Padronização:** Verificação de valores nulos e duplicados, além de correção de inconsistências em campos de texto (cargos, departamentos e regiões). Conversão da coluna `HIRE_DATE` para o formato `datetime` e criação da coluna `HIRE_YEAR` para análises temporais. Ajuste de casas decimais para melhor legibilidade nas tabelas.

* **Tipagem de Dados:** Garantia de que as colunas numéricas estivessem no formato adequado para os cálculos estatísticos.

* **Filtragem:** Seleção das variáveis de interesse para focar nas métricas de remuneração e estrutura organizacional.

---

## 📈 4. O que foi observado na análise

Utilizando técnicas de estatística descritiva e visualização, examinou-se o comportamento do salário em relação aos departamentos (Query 1), expandindo posteriormente para as variáveis de região, país e cidade (Query 2). As análises abrangeram:

### **QUERY_01**
1. Distribuição de 'Salário x Departamento' (Tabela descritiva + Subplots com BoxPlot e Média/Desvio Padrão).
2. Distribuição de 'Salário x Cargo' (Tabela descritiva + Subplots com BoxPlot e Média/Desvio Padrão).
3. Distribuição de 'Salário x Ano de Contratação' (Subplots com BoxPlot e Regressão Linear).

### **QUERY_02**
1. Distribuição de 'Salário x Região' (Tabela descritiva + Subplots com BoxPlot, Média e Desvio Padrão).
2. Distribuição de 'Funcionários x Localização' (Tabela descritiva + Gráfico de frequência).
3. Tabela de Comparação Salarial (Europa vs. Estados Unidos).
4. Gráfico: Heatmap de Comparação Salarial por Departamento e Localidade.

---

## 💡 5. Principais Insights

### **QUERY_01**
* **Disparidade entre Setores:** A média da diretoria (*Executive*) ultrapassa em mais de 4 vezes a do setor operacional (*Shipping*), evidenciando a forte valorização dos cargos de decisão.

* **Políticas Salariais Distintas:** Setores como RH e Administração possuem remuneração totalmente padronizada, enquanto áreas como *Purchasing* e *Marketing* apresentam alta variação interna.

* **Outliers e Bonificações:** O teto distante da mediana em áreas comerciais e de compras aponta para comissões ou cargos seniores específicos puxando os valores para cima.

* **Senioridade Técnica:** Funções como *Programmer* e *Sales Representative* mostram grande dispersão salarial, refletindo planos de carreira baseados em níveis técnicos ou desempenho.

* **Rigidez Gerencial:** Cargos de gerência (*Finance, Accounting, Marketing*) possuem faixas extremamente rígidas e centralizadas em patamares fixos.

* **Amplitude da Base ao Topo:** O fator multiplicador entre o menor piso (*Purchasing Clerk*) e a presidência é superior a 8 vezes, retrato de uma estrutura corporativa tradicional.

* **Mito da Antiguidade:** O tempo de casa não dita o salário; as médias oscilam por safra conforme o tipo de cargo contratado no período (picos em 2011 e 2013 puxados por diretoria).

* **Controle Recente de Entrada:** Entre 2016 e 2018, nota-se uma padronização mais estreita nos salários de entrada, indicando maior rigidez orçamentária para novas vagas.

### **QUERY_02**
* **Centralização nos EUA:** A operação americana concentra tanto a base operacional quanto a presidência, abrigando os maiores extremos da corporação.

* **Pisos Internacionais Elevados:** Filiais na Europa e no Canadá apresentam pisos maiores que a média americana, refletindo estruturas focadas em cargos de média e alta senioridade.

* **Descentralização e Custos:** A diferença entre a Alemanha (média de 10.000) e os EUA (6.193) demonstra escritórios estrangeiros com perfis mais verticalizados e de alto valor agregado.

* **Polarização do Headcount:** Quase a totalidade do efetivo concentra-se em dois grandes polos (EUA e UK), enquanto Alemanha e Canadá operam como unidades enxutas.

* **Diluição Salarial:** Operações maiores diluem a média global devido ao volume de cargos de base, enquanto mercados mínimos refletem alocações pontuais e seniores.

* **Europa vs. Américas (Macro):** O bloco europeu opera com remuneração média superior e mais equilibrada, ao passo que as Américas concentram a pirâmide corporativa inteira.

* **Assimetria nas Américas:** A distância entre média e mediana nas Américas comprova uma forte assimetria à direita, puxada pelos altos salários do topo frente à base volumosa.

---

---
**Autor:** Bruno Briani de Paula  
**Formação:** Biólogo | Perito Ambiental | Analista de Dados  
**Registro Profissional:** CRBIO 118971/09  
**Local e Data:** Florianópolis, 20/07/2026