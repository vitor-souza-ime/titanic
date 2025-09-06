# Titanic - Análise com SQL

Este repositório contém consultas SQL aplicadas ao famoso dataset do **Titanic**, usado em estudos de ciência de dados e aprendizado de máquina.  
O foco aqui é realizar análises exploratórias com **SQL puro**, interpretando variáveis como porto de embarque, classe, gênero e sobrevivência.

---

## 📂 Estrutura do Repositório

- `main.sql` → Script SQL com a consulta principal.
- `train.csv` → Base de dados utilizada (mesmo formato do dataset clássico do Kaggle).

---

## 📝 Consulta Principal

A query em `main.sql` realiza um agrupamento dos passageiros por:

- **Porto de embarque** (`Embarked` → *Cherbourg, Queenstown, Southampton*),
- **Classe** (`Pclass` → *1ª, 2ª, 3ª*),
- **Gênero** (`Sex` → *Homem, Mulher*),
- **Status de sobrevivência** (`Survived` → *Sobreviveu ou Não Sobreviveu*).

Ela retorna:

- **Total absoluto** de passageiros em cada grupo,
- **Percentual relativo** em relação ao total de passageiros no dataset.

---

## 🚀 Como Executar

1. Clone este repositório:
   git clone https://github.com/vitor-souza-ime/titanic.git
   cd titanic

2. Abra um cliente SQL compatível (ex.: **SQLite**, **DuckDB**, **DBeaver**, etc.).

3. Carregue o dataset:

   .mode csv
   .import train.csv train
   
4. Execute o script:

   .read main.sql
   
---

## 📊 Exemplo de Saída

| Embarque    | Classe    | Gênero | Status         | Total\_Absoluto | Percentual |
| ----------- | --------- | ------ | -------------- | --------------- | ---------- |
| Cherbourg   | 1° Classe | Mulher | Sobreviveu     | 43              | 4.82%      |
| Southampton | 3° Classe | Homem  | Não Sobreviveu | 300             | 33.70%     |
| ...         | ...       | ...    | ...            | ...             | ...        |

---

## 📌 Observações

* O dataset `train.csv` deve estar no mesmo diretório do `main.sql`.
* A função `ROUND` e o formato de `CASE` foram ajustados para maior legibilidade.
* Caso utilize outro banco de dados além do SQLite, verifique a compatibilidade da sintaxe.

---

## 📖 Referências

* [Kaggle Titanic Dataset](https://www.kaggle.com/c/titanic)
* [Documentação do SQLite](https://www.sqlite.org/docs.html)


