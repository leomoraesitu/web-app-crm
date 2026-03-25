# 🧪 Test Cases — Sprint 4
## Web App CRM (FlutterFlow + Firebase)

---

# 📌 1. Objetivo

Este documento define os **casos de teste detalhados da Sprint 4**, utilizando o padrão **Given / When / Then**, garantindo:

- Clareza nos cenários
- Rastreabilidade com QA e Trello
- Cobertura dos fluxos críticos do sistema

---

# 🎯 2. Escopo

Cobertura dos seguintes módulos:

- Autenticação
- Multi-tenant (empresa)
- Leads (CRUD + Kanban)
- Colaboradores
- Dashboard
- RBAC (controle de acesso)

---

# 🔴 3. Casos de Teste — P0 (Críticos)

---

## 🧩 3.1 Multi-Tenant — Isolamento de Dados

### TC-001 — Bloquear acesso entre empresas

**Given** usuário autenticado na Empresa A  
**When** tenta acessar dados da Empresa B  
**Then** o sistema deve bloquear o acesso  

---

### TC-002 — Permitir acesso dentro do tenant

**Given** usuário autenticado na Empresa A  
**When** acessa dados da própria empresa  
**Then** o sistema deve permitir acesso  

---

## 🔐 3.2 RBAC — Controle de Acesso

### TC-003 — Admin acessa configurações

**Given** usuário com role Admin  
**When** acessa configurações da empresa  
**Then** acesso deve ser permitido  

---

### TC-004 — Colaborador bloqueado em configurações

**Given** usuário com role Colaborador  
**When** acessa configurações da empresa  
**Then** acesso deve ser negado  

---

## 📊 3.3 Leads — CRUD

### TC-005 — Criar lead com sucesso

**Given** formulário válido  
**When** usuário cria um lead  
**Then** o lead deve ser persistido no Firestore  

---

### TC-006 — Bloquear criação sem companyId

**Given** tentativa de criação sem companyId  
**When** usuário submete o formulário  
**Then** o sistema deve rejeitar  

---

### TC-007 — Editar lead

**Given** um lead existente  
**When** usuário atualiza dados  
**Then** alterações devem ser persistidas  

---

### TC-008 — Deletar lead

**Given** um lead existente  
**When** usuário exclui  
**Then** o lead deve ser removido  

---

## 🧱 3.4 Kanban

### TC-009 — Mover lead entre stages

**Given** lead em um stage  
**When** usuário move no kanban  
**Then** o stage deve ser atualizado  

---

## 👥 3.5 Colaboradores

### TC-010 — Remover colaborador

**Given** colaborador existente  
**When** admin remove o colaborador  
**Then** o colaborador deve ser excluído  

---

### TC-011 — Preservar leads ao remover colaborador

**Given** leads vinculados ao colaborador  
**When** colaborador é removido  
**Then** os leads devem permanecer  

---

### TC-012 — Lead sem responsável

**Given** colaborador removido  
**When** acessar lead vinculado  
**Then** deve exibir "Sem responsável"  

---

## 📈 3.6 Dashboard

### TC-013 — Atualizar métricas após criação

**Given** dashboard carregado  
**When** novo lead é criado  
**Then** métricas devem atualizar  

---

### TC-014 — Métricas por tenant

**Given** múltiplas empresas  
**When** dashboard é exibido  
**Then** dados devem ser isolados por empresa  

---

# 🟠 4. Casos de Teste — P1

---

## 🔐 4.1 Autenticação

### TC-015 — Login válido

**Given** credenciais válidas  
**When** usuário realiza login  
**Then** deve acessar o sistema  

---

### TC-016 — Login inválido

**Given** credenciais inválidas  
**When** tenta login  
**Then** deve exibir erro  

---

## 🧪 4.2 UI States

### TC-017 — Loading

**Given** requisição em andamento  
**When** tela carrega  
**Then** exibir loading  

---

### TC-018 — Empty State

**Given** ausência de dados  
**When** tela é exibida  
**Then** mostrar estado vazio  

---

### TC-019 — Error State

**Given** erro na requisição  
**When** falha ocorre  
**Then** exibir mensagem de erro  

---

# 🟡 5. Casos de Teste — P2

---

## 🧾 5.1 Form Validation

### TC-020 — Botão desabilitado

**Given** formulário inválido  
**When** campos incompletos  
**Then** botão deve estar desabilitado  

---

### TC-021 — Botão habilitado

**Given** formulário válido  
**When** campos corretos  
**Then** botão deve ser habilitado  

---

## 🧪 5.2 Smoke Test

### TC-022 — Renderização geral

**Given** usuário logado  
**When** navega pelas telas  
**Then** nenhuma tela deve quebrar  

---

# 🔁 6. Rastreabilidade com Testes Automatizados

| Test Case | Arquivo de Teste |
|----------|------------------|
| TC-001 | tenant_isolation_flow_test.dart |
| TC-003 | permissions_test.dart |
| TC-005 | lead_form_test.dart |
| TC-009 | kanban_page_test.dart |
| TC-011 | collaborator_delete_flow_test.dart |
| TC-013 | dashboard_flow_test.dart |

---

# 📊 7. Critérios de Aceite

- Todos os testes P0 devem passar
- Nenhum bug crítico permitido
- Fluxos principais funcionando
- Dados consistentes no sistema

---

# 🚀 8. Conclusão

Este documento garante:

- Clareza na validação do sistema
- Cobertura dos fluxos críticos
- Base sólida para testes automatizados
- Alinhamento entre QA, desenvolvimento e produto

---