# 🧪 Plano de Qualidade — Sprint 4
## Web App CRM (FlutterFlow + Firebase)

---

# 📌 1. Objetivo

Este documento define a estratégia de **Quality Assurance (QA)** da **Sprint 4**, com foco em garantir:

- Integridade dos dados
- Segurança multi-tenant
- Confiabilidade dos fluxos críticos
- Consistência entre frontend e backend
- Cobertura de testes automatizados

A Sprint 4 consolida o core do sistema CRM, sendo crítica para validação de regras de negócio e governança de dados.

---

# 🎯 2. Escopo da Sprint 4

## Funcionalidades cobertas

- Gestão de Leads (CRUD + Kanban)
- Gestão de Colaboradores
- Multi-tenant (empresa)
- Dashboard (métricas e agregações)
- Autenticação e autorização (RBAC)
- Integração FlutterFlow + Firebase

---

# 🧱 3. Estratégia de Testes

A estratégia está organizada em **4 camadas**:

## 3.1 Testes de Regra de Negócio
Validação da lógica independente da interface.

## 3.2 Testes de Integração
Validação da comunicação entre:
- FlutterFlow (UI)
- Firebase Auth
- Firestore

## 3.3 Testes de Interface (UI)
Validação de:
- Renderização
- Estados visuais
- Interações

## 3.4 Testes de Segurança
Validação de:
- Firestore Rules
- Isolamento multi-tenant
- Controle de acesso (RBAC)

---

# 🔴 4. Casos de Teste Prioritários (P0)

## 4.1 Isolamento Multi-Tenant

**Objetivo:** garantir segregação total de dados por empresa.

### Critérios de Aceite
- Usuário não acessa dados de outro tenant
- Firestore bloqueia leitura/escrita indevida
- Queries respeitam `companyId`

---

## 4.2 RBAC (Admin vs Colaborador)

### Critérios de Aceite
- Admin acessa configurações da empresa
- Colaborador não acessa configurações
- Permissões respeitadas no backend e UI

---

## 4.3 CRUD de Leads

### Critérios de Aceite
- Criar, editar e deletar leads corretamente
- Persistência no Firestore
- Sincronização com UI (Kanban)

---

## 4.4 Movimentação no Kanban

### Critérios de Aceite
- Alteração de stage persistida corretamente
- UI sincronizada com backend

---

## 4.5 Exclusão de Colaborador

### Critérios de Aceite
- Leads permanecem no sistema
- `ownerUserRef = null`
- UI exibe "Sem responsável"

---

## 4.6 Dashboard por Empresa

### Critérios de Aceite
- Métricas corretas por tenant
- Atualização após operações CRUD

---

# 🟠 5. Casos de Teste Secundários (P1)

- Fluxo Login → Dashboard
- Criação de Lead (End-to-End)
- Estados de UI (loading, empty, error)
- Convite de colaborador

---

# 🟡 6. Casos de Teste Complementares (P2)

- Validação de formulários
- Smoke tests das páginas principais

---

# 📊 7. Cobertura de Testes (Test Coverage)

## 7.1 Tipos de Teste

- Unit Tests
- Widget Tests
- Integration Tests
- Firestore Rules Tests

---

## 7.2 Padrão de Cobertura

Todos os testes devem atender ao seguinte checklist:

- [ ] Unit Test implementado
- [ ] Widget Test implementado (quando aplicável)
- [ ] Integration Test implementado
- [ ] Firestore Rules Test (quando aplicável)
- [ ] Cenário de sucesso validado
- [ ] Cenário de erro validado
- [ ] Edge cases cobertos
- [ ] Teste incluído no CI

---

## 7.3 Meta de Cobertura

- Cobertura mínima: **70%**
- Fluxos críticos (P0): **100% obrigatórios**

---

# 🔐 8. Testes de Segurança

## Firestore Rules

Devem garantir:

- Isolamento por `companyId`
- Restrição por role (RBAC)
- Proteção contra acesso não autorizado
- Validação de escrita segura

---

# 🔁 9. Integração Contínua (CI)

## GitHub Actions

Pipeline deve executar:

- Unit Tests
- Widget Tests
- Integration Tests
- Firestore Rules Tests

### Regras
- PR só pode ser aprovado com testes passando
- Falha em testes bloqueia merge
- Coverage report gerado automaticamente

---

# 🧪 10. Ambiente de Testes

## Ferramentas

- Flutter Test
- Integration Test (Flutter)
- Firebase Emulator Suite
- GitHub Actions

---

# 🗂 11. Estrutura de Testes

```text
test/
  unit/
  widget/

integration_test/

firebase/
  firestore_rules/
```
---

# 📌 12. Definition of Done (QA)

Uma funcionalidade só é considerada concluída se:

 * [ ] Testes automatizados implementados
 * [ ] Todos os testes passando
 * [ ] Cobertura mínima atingida
 * [ ] Regras de segurança validadas
 * [ ] Testes integrados ao CI

---

# 📈 13. Indicadores de Qualidade

* % de cobertura de testes
* Número de testes por feature
* Taxa de falhas em CI
* Bugs pós-release

---

# 🚀 14. Conclusão

A Sprint 4 estabelece a base de qualidade do CRM, garantindo:

* Segurança de dados (multi-tenant)
* Robustez do core de leads
* Confiabilidade do sistema
* Prontidão para escala

Este plano posiciona o projeto com padrão de qualidade alinhado a práticas profissionais de engenharia de software.