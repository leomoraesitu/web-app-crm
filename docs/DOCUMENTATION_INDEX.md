# 📚 Documentation Index -- Web App CRM

Este documento centraliza e organiza toda a documentação técnica do
projeto **Web App CRM (FlutterFlow + Firebase)**.

Objetivo: garantir rastreabilidade, governança técnica e clareza
arquitetural.

------------------------------------------------------------------------

# 🗂 Estrutura da Documentação

## 1️⃣ Visão Estratégica

  ------------------------------------------------------------------------------
  Documento                                  Descrição
  ------------------------------------------ -----------------------------------
  [00_visao-geral.md](./00_visao-geral.md)   Contexto do projeto, objetivos,
                                             escopo e proposta de valor

  [01_requisitos.md](./01_requisitos.md)     Requisitos funcionais e não
                                             funcionais
  ------------------------------------------------------------------------------

------------------------------------------------------------------------

## 2️⃣ Produto e Experiência

  -----------------------------------------------------------------------
  Documento                           Descrição
  ----------------------------------- -----------------------------------
  [02_ux-ui.md](./02_ux-ui.md)        User flow, design system e
                                      responsividade

  -----------------------------------------------------------------------

------------------------------------------------------------------------

## 3️⃣ Arquitetura e Engenharia

  --------------------------------------------------------------------------------------------------
  Documento                                                      Descrição
  -------------------------------------------------------------- -----------------------------------
  [03_arquitetura.md](./03_arquitetura.md)                       Visão arquitetural e padrões
                                                                 adotados

  [04_modelagem-dados.md](./04_modelagem-dados.md)               Modelo conceitual, lógico e físico
                                                                 (Firestore)

  [05_seguranca-privacidade.md](./05_seguranca-privacidade.md)   Estratégias de segurança e
                                                                 isolamento multi-tenant
  --------------------------------------------------------------------------------------------------

------------------------------------------------------------------------

## 4️⃣ Gestão e Governança

  ------------------------------------------------------------------------------------
  Documento                                        Descrição
  ------------------------------------------------ -----------------------------------
  [06_gestao-projeto.md](./06_gestao-projeto.md)   Metodologia, roadmap e organização
                                                   ágil

  [CHANGELOG.md](../CHANGELOG.md)                  Histórico de versões
  ------------------------------------------------------------------------------------

------------------------------------------------------------------------

## 5️⃣ Decisões Arquiteturais (ADRs)

Localizadas em:

/docs/decisoes/

Cada ADR documenta: - Contexto - Decisão tomada - Alternativas
avaliadas - Consequências técnicas

------------------------------------------------------------------------

# 🏛 Padrões de Documentação

-   Versionamento Semântico (SemVer)
-   Conventional Commits
-   Rastreabilidade entre requisitos → implementação → release
-   Multi-tenant por `companyId`
-   Governança baseada em boas práticas de Engenharia de Software

------------------------------------------------------------------------

# 📌 Fluxo Recomendado de Leitura

1.  Visão Geral\
2.  Requisitos\
3.  UX/UI\
4.  Arquitetura\
5.  Modelagem de Dados\
6.  Segurança\
7.  Gestão do Projeto\
8.  CHANGELOG

------------------------------------------------------------------------

# 🚀 Objetivo do Projeto

Este repositório foi estruturado como um case completo de engenharia
aplicada a um CRM SaaS realista, demonstrando:

-   Arquitetura escalável\
-   Segurança e isolamento de dados\
-   Governança técnica\
-   Organização ágil\
-   Documentação estruturada
