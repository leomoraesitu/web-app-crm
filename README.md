# Web App CRM – FlutterFlow & Firebase

## 📖 Visão Geral
Aplicação web CRM multiempresa (SaaS) desenvolvida com FlutterFlow e Firebase, focada em organização de leads, gestão de times comerciais e visualização de funil de vendas via Kanban e Dashboard.

Projeto criado com foco em:
- Boas práticas de Engenharia de Software
- UX/UI responsivo
- Segurança e isolamento de dados (multi-tenant)
- Arquitetura escalável NoSQL
- Metodologias Ágeis e governança técnica

---

## 🎯 Problema
Pequenas e médias equipes comerciais enfrentam dificuldades em:
- Centralizar leads
- Padronizar processos de vendas
- Controlar permissões por perfil
- Visualizar métricas de desempenho em tempo real

---

## 💡 Solução Proposta
Um CRM web multiempresa com:
- Autenticação segura
- Dashboard com indicadores
- Kanban de vendas
- Gestão de leads
- Gestão de colaboradores e permissões

---

## 🧩 Funcionalidades (v1)
- Login e autenticação
- Cadastro e edição de leads
- Kanban por status
- Dashboard com métricas
- Gestão de equipe (admin)
- Isolamento de dados por empresa

---

## 🛠️ Stack Tecnológica
- Frontend: FlutterFlow
- Backend: Firebase
  - Authentication
  - Firestore
  - Storage
- Metodologia: Ágil (Kanban)
- Design: UI responsivo (desktop/tablet/mobile)

---

## 🧠 Arquitetura
- Multi-tenant via `companyId`
- Firestore estruturado por entidades
- Regras de segurança por papel (role-based access)

📄 Detalhes completos em: `/docs/03_arquitetura.md`

---

## 📊 Gestão de Projeto

Este projeto é conduzido seguindo princípios de Engenharia de Software e metodologias ágeis adaptadas para projeto individual.

### 🧭 Metodologia
- Framework: Kanban
- Gestão visual via Trello
- Organização por épicos, features e tasks
- Priorização baseada em valor de negócio

### 🔄 Ciclo de Desenvolvimento
1. Levantamento de requisito
2. Modelagem (UX + Dados)
3. Implementação
4. Validação e testes
5. Documentação
6. Versionamento

### 🗂️ Board do Projeto
Trello oficial:
https://trello.com/invite/b/698b8510a32a13b502ffda3d/ATTIc658d790b2083b685dcbd9f0532def2c3CC9D074/web-app-crm-flutterflow-firebase

---

## 🏛️ Governança Técnica

O projeto segue práticas estruturadas de governança visando escalabilidade, segurança e rastreabilidade.

### 📌 Estrutura de Versionamento
- Commits padronizados (Conventional Commits)
- Controle de versões via GitHub
- Registro de alterações em `CHANGELOG.md`

### 🔐 Segurança
- Isolamento multi-tenant via `companyId`
- Controle de acesso por papel (role-based access)
- Regras de segurança no Firestore

### 📐 Arquitetura e Padrões
- Separação clara entre UI, lógica e dados
- Componentização no FlutterFlow
- Convenções de nomenclatura padronizadas

### 📊 Qualidade
- Documentação centralizada em `/docs`
- ADRs para decisões arquiteturais
- Critérios de pronto (Definition of Done)

---

## 📂 Documentação
Toda a documentação do projeto está disponível em `/docs`:
- Requisitos
- UX/UI
- Arquitetura
- Modelagem de Dados
- Segurança
- Gestão do Projeto

---

## 🚀 Demonstração
- FlutterFlow: https://app.flutterflow.io/project/web-app-c-r-m-mfus98
- Firebase (dev/prod): 
- Board do Projeto: https://trello.com/invite/b/698b8510a32a13b502ffda3d/ATTIc658d790b2083b685dcbd9f0532def2c3CC9D074/web-app-crm-flutterflow-firebase

---

## 📌 Histórico de Versões

Consulte o histórico completo em [CHANGELOG.md](./CHANGELOG.md)

---

## 📌 Status do Projeto
🚧 Em desenvolvimento – versão 1.0
