# Web App CRM
### Multi-tenant SaaS CRM | FlutterFlow + Firebase

[![Live Web](https://img.shields.io/badge/Live_Web-Online-success?style=for-the-badge)](https://webappcrm-leomoraesitu.flutterflow.app)
[![Sprint 3](https://img.shields.io/badge/Sprint_3-Completed-6f42c1?style=for-the-badge)]
[![Platform](https://img.shields.io/badge/Platform-Web_+_Android-blue?style=for-the-badge)]
[![Architecture](https://img.shields.io/badge/Architecture-Multi--Tenant-orange?style=for-the-badge)]

---

## 🚀 Aplicação Publicada

🌐 **Versão Web (Produção)**  
👉 https://webappcrm-leomoraesitu.flutterflow.app

📦 **APK Android disponível na aba Releases**

Este projeto já possui deploy público ativo.

---

## 🧪 Ambiente

Versão publicada atualmente corresponde à Sprint 3 (UI consolidada).
Integração completa com Firestore será liberada na Sprint 4.

---

## 🏢 Sobre o Produto

Web App CRM é uma aplicação SaaS multiempresa desenvolvida para estruturar e escalar processos comerciais de pequenas e médias equipes.

O sistema oferece:

- Dashboard estratégico
- Gestão visual de leads
- Estrutura Kanban
- Controle de acesso por perfil (RBAC)
- Isolamento completo de dados por empresa (multi-tenant)

Arquitetado com foco em escalabilidade, segurança e governança técnica.

---

## 🎯 Proposta de Valor

Resolve três problemas críticos:

- Falta de padronização do funil
- Baixa visibilidade de métricas
- Risco de acesso indevido entre empresas

O modelo multi-tenant baseado em `companyId` garante isolamento total de dados.

---

## 🧩 Funcionalidades Implementadas

### 🔐 Autenticação
- Login
- Cadastro
- Estrutura preparada para controle de sessão

### 📊 Dashboard
- Layout responsivo
- Gráficos estruturados
- Tabelas organizadas

### 📌 Kanban
- Estrutura visual pronta
- Organização por status
- Base preparada para integração Firestore

### 👥 Gestão de Interface
- Menu colapsável
- Desktop / Tablet / Mobile
- Dark & Light Mode
- Componentização avançada

---

## 🏗 Arquitetura Técnica

Arquitetura SaaS baseada em:

- FlutterFlow (Frontend Web + Mobile)
- Firebase Authentication
- Cloud Firestore (NoSQL)
- RBAC (Role-Based Access Control)
- Multi-tenant via `companyId`

📄 Detalhes completos em `/docs/03_arquitetura.md`

---

## 📈 Roadmap do Produto

| Fase | Status |
|------|--------|
| Sprint 1 – Planejamento | ✅ |
| Sprint 2 – Prototipagem | ✅ |
| Sprint 3 – UI Executável | ✅ |
| Sprint 4 – Integração Firestore | 🔜 |
| Sprint 5 – Segurança Produção | 🔜 |
| Sprint 6 – Deploy Final | 🔜 |

---

## 📊 Gestão de Produto

- Metodologia: Kanban
- Story Points definidos
- Definition of Done aplicada
- Versionamento SemVer
- Conventional Commits
- ADRs documentados

Board oficial:
https://trello.com/invite/b/698b8510a32a13b502ffda3d/ATTIc658d790b2083b685dcbd9f0532def2c3CC9D074/web-app-crm-flutterflow-firebase

---

## 🏛 Governança Técnica

- Isolamento multi-tenant
- Controle de acesso por papel
- Separação clara entre UI e dados
- Versionamento estruturado
- Documentação centralizada em `/docs`

---

## 📂 Documentação Técnica

A documentação completa está estruturada em `/docs`, incluindo:

- Visão Estratégica
- Requisitos
- Processo de Prototipagem
- Arquitetura
- Modelagem de Dados
- Segurança
- ADRs
- Gestão do Projeto

---

## 📦 Distribuição

- 🌐 Web Deploy ativo
- 📱 APK Android disponível nas Releases

---

## 📌 Status Atual

🟢 Produto publicado (Web)  
🟡 UI consolidada  
🔜 Integração completa com backend  
🔐 Preparação para regras de segurança produção  

---

## 📄 Histórico de Versões

Consulte o histórico completo em:

👉 [CHANGELOG.md](./CHANGELOG.md)