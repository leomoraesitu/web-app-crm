# FORM_VALIDATION_STANDARD.md

## 📌 Objetivo

Estabelecer um padrão profissional, reutilizável e escalável para validação de formulários no projeto **Web App CRM (FlutterFlow)**, garantindo:

* Consistência entre telas
* Prevenção de dados inválidos
* Melhor experiência do usuário (UX)
* Facilidade de manutenção
* Robustez em operações de backend

---

## 🧱 Arquitetura de Validação

A validação é dividida em **3 camadas obrigatórias**:

### 1. UX Validation (OnChange)

* Executada ao digitar no campo
* Atualiza estado de validação em tempo real
* Fornece feedback imediato

### 2. Submit Validation (OnTap - CTA)

* Executada ao clicar no botão (CTA)
* Revalida todos os campos antes de enviar
* Impede persistência de dados inválidos

### 3. Backend Validation Handling

* Executada após chamadas backend
* Trata erros operacionais
* Exibe feedback ao usuário

---

## 🧠 Convenções

### 🔹 Local Component State Variables

Padrão obrigatório:

```text
isValid<Name>
```

Exemplos:

```text
isValidName
isValidEmail
isValidPhone
isValidDescription
isValidSource
isValidPrimaryColor
isValidSecondaryColor
```

---

### 🔹 Action Output Variables

Padrão obrigatório:

```text
isValid<Name>Output
```

Exemplo:

```text
isValidNameOutput
```

---

### 🔹 Campos de Entrada (Draft)

Para inputs intermediários:

```text
draft<Name>
```

Exemplo:

```text
draftPrimaryColor
draftSecondaryColor
```

---

## ⚙️ Fluxo Padrão por Campo

### 🔹 OnChange (TextField)

1. Atualizar estado do campo (`draft`)
2. Executar validação (Inline Function ou lógica)
3. Atualizar:

```text
isValid<Field> = true / false
```

---

### 🔹 Regras de Validação (Exemplos)

#### Nome

```dart
textField.trim().length >= 3
```

#### Email

```dart
textField.contains('@') && textField.contains('.')
```

#### Telefone

```dart
textField.length >= 10
```

#### Descrição

```dart
textField.trim().isNotEmpty
```

#### HEX Color (com normalização)

```dart
textField.length == 7 && textField.startsWith('#')
```

---

## 🎯 CTA (Botões) - Regra Obrigatória

### 🔹 Disable Condition (Padrão Oficial)

**NUNCA usar `isFormValid` com AND**

Usar sempre:

```text
isValidFieldA == false OR
isValidFieldB == false OR
isValidFieldC == false
```

### ✔ Motivo

O FlutterFlow não atualiza corretamente estados compostos quando campos estão vazios.

---

## 🔄 Fluxo do CTA (OnTap)

1. Revalidar campos críticos (opcional, mas recomendado)
2. Executar ação backend
3. Condicional de resposta:

```text
IF success → fluxo normal
ELSE → mostrar erro
```

---

## 🚫 Tratamento de Erros

### 🔹 Validação (Frontend)

* Exibir erro inline no campo
* Não usar alert dialog

### 🔹 Backend

* Usar Alert Dialog ou Snackbar

#### Padrão:

```text
Title: "Erro"
Message: <mensagem do erro>
Button: "Ok"
```

---

## 🧩 Liberação Progressiva (UX Guiada)

Campos e ações só devem ser habilitados quando:

```text
ValidationOutput == true
```

Exemplo:

* Campo Email só habilita após Nome válido
* Botão só habilita após todos válidos

---

## 🎨 Normalização de Inputs

### 🔹 HEX Color

Se usuário digitar:

```text
FFFFFF
```

Converter automaticamente para:

```text
#FFFFFF
```

---

## 🔐 Regras Obrigatórias

Todo formulário deve:

* Ter validação por campo
* Atualizar estado no OnChange
* Bloquear CTA se inválido
* Revalidar no OnTap
* Tratar erro backend
* Ter naming padronizado
* Não permitir submit com dados inválidos

---

## 📋 Checklist de Implementação

Antes de considerar um formulário pronto:

* [ ] Todos os campos possuem `isValid`
* [ ] Validação implementada no OnChange
* [ ] CTA bloqueado corretamente (OR)
* [ ] Revalidação no OnTap
* [ ] Tratamento de erro backend implementado
* [ ] Mensagens padronizadas
* [ ] Inputs normalizados (quando necessário)
* [ ] Fluxo progressivo aplicado (se aplicável)

---

## 🧪 Boas Práticas

* Evitar lógica centralizada quebrada (`isFormValid`)
* Preferir validação distribuída por campo
* Sempre pensar em UX antes de backend
* Nunca confiar apenas no botão desabilitado
* Sempre tratar erro de backend

---

## 🚀 Template Operacional (Reutilizável)

### Para cada novo formulário:

1. Criar estados:

```text
isValid<Field>
draft<Field>
```

2. Implementar OnChange por campo
3. Aplicar validação individual
4. Configurar CTA com OR
5. Implementar OnTap com:

   * validação
   * backend
   * tratamento de erro
6. Validar UX (fluxo progressivo)

---

## 📦 Escopo de Aplicação

Este padrão deve ser aplicado em:

* Login
* Cadastro
* Leads (criar/editar)
* Minha Empresa
* Personalização de tema
* Convites
* Qualquer novo formulário

---

## 🧭 Resultado Esperado

* UX consistente
* Zero envio de dados inválidos
* Código previsível
* Manutenção simplificada
* Escalabilidade do projeto

---

## 🏁 Status

**Implementado e validado na Sprint 4**

---
