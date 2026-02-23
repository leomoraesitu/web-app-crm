# 🏗️ Diagrama Arquitetural – Web App CRM

## 📌 Visão Geral

Arquitetura SaaS Multiempresa baseada em:

- Frontend: FlutterFlow (Web App Responsivo)
- Backend: Firebase
- Banco: Firestore NoSQL
- Auth: Firebase Auth
- Storage: Firebase Storage

---

## 🔷 Camadas da Arquitetura

### 1️⃣ Camada de Apresentação
- Dashboard
- Kanban
- Time
- Configurações

### 2️⃣ Camada de Aplicação
- Controle de Permissões
- Regras de Negócio
- Validação de Dados

### 3️⃣ Camada de Dados
- Firestore (Coleções)
- Storage (Uploads)
- Auth (Usuários)

---

## 🔶 Modelo Conceitual

Empresa
 ├── Colaboradores
 └── Leads

Admin (1:1 Empresa)
Colaborador (N:1 Empresa)
Leads (N:1 Empresa)

---

## 🔐 Segurança

- Regra por papel
- Isolamento por empresa (multi-tenant)
- Regras Firestore baseadas em companyId