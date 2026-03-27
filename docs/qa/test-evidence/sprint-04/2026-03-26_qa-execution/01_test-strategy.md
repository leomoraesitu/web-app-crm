# 01_test_strategy.md

# 🧠 Test Strategy — Sprint 04

---

## 🎯 Objetivo

Garantir qualidade dos fluxos críticos de autenticação.

---

## 🧱 Tipos de Teste

### Widget Tests
Validação de UI e estado.

### Integration Tests
Validação de fluxo completo.

### Unit Tests
Validação de regras isoladas.

---

## 🧪 Arquitetura

- AuthFacade → desacoplamento
- FakeAuthFacade → previsibilidade
- ValueKeys → testabilidade

---

## 📌 Escopo

- Login
- Cadastro
- Validação de formulário
- Feedback (dialogs)

---

## 🚫 Fora do escopo

- Firebase real
- Dashboard
- Leads

---

## ✅ Critério de Sucesso

- 100% testes aprovados
- Execução determinística