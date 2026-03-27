# 02_test_execution_sequence.md

# ▶️ Test Execution Sequence — Sprint 04

---

## ⚙️ Pré-requisitos

- Flutter instalado
- Projeto configurado
- Dependências resolvidas

```bash
flutter pub get
```

## ▶️ Execução

**Widget Tests**
```bash
flutter test test/widget/
```

**Unit Tests**
```bash
flutter test test/unit/
```

**Integration Tests**
```bash
flutter test integration_test/flows/
```

---

## 🔄 Ordem Recomendada
1. Unit
2. Widget
3. Integration

---

## ✅ Resultado Esperado
* Todos os testes passando
* Sem falhas
* Execução estável

