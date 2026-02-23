# 🎨 DESIGN SYSTEM – Web App CRM

## 📌 Objetivo

Este documento define o Design System oficial do Web App CRM.

Seu objetivo é garantir:

- Consistência visual
- Escalabilidade do produto
- Reutilização de componentes
- Redução de inconsistências
- Governança de UI
- Padronização multiempresa

O Design System foi estruturado antes da implementação final no FlutterFlow,
evitando decisões visuais improvisadas.

---

# 🧱 Princípios do Design

## 1️⃣ Clareza
Interface objetiva, com foco em leitura rápida de informações estratégicas.

## 2️⃣ Hierarquia Visual
Informações organizadas por peso visual (tamanho, cor e espaçamento).

## 3️⃣ Consistência
Componentes reutilizáveis com comportamento previsível.

## 4️⃣ Escalabilidade
Preparado para expansão futura do CRM (novos módulos SaaS).

## 5️⃣ Usabilidade Corporativa
Interface adequada para uso contínuo em ambiente empresarial.

---

# 🎨 Paleta de Cores

## 🔷 Cores Primárias

| Nome | Uso | Hex |
|------|------|------|
| Primary | Botões principais, destaques | #2F80ED |
| Primary Dark | Hover | #1C5FC4 |
| Primary Light | Background leve | #EAF2FF |

## 🔶 Cores Secundárias

| Nome | Uso | Hex |
|------|------|------|
| Success | Status positivo | #27AE60 |
| Warning | Alertas | #F2C94C |
| Danger | Erros | #EB5757 |
| Info | Informações | #56CCF2 |

## ⚫ Cores Neutras

| Nome | Uso | Hex |
|------|------|------|
| Background | Fundo principal | #F9FAFB |
| Surface | Cards | #FFFFFF |
| Border | Divisórias | #E0E0E0 |
| Text Primary | Títulos | #333333 |
| Text Secondary | Texto auxiliar | #828282 |

---

# 🔠 Tipografia

## Fonte Principal
Sans-serif moderna (ex: Inter, Poppins ou padrão FlutterFlow)

## Hierarquia

| Elemento | Tamanho | Peso |
|----------|---------|------|
| H1 | 32px | Bold |
| H2 | 24px | SemiBold |
| H3 | 20px | Medium |
| Body | 16px | Regular |
| Small | 14px | Regular |

Regras:
- Nunca utilizar menos de 14px
- Line-height mínimo: 1.4
- Evitar variações excessivas de peso

---

# 📐 Sistema de Espaçamento

Baseado em escala de 4px.

| Escala | Valor |
|--------|-------|
| XS | 4px |
| S | 8px |
| M | 16px |
| L | 24px |
| XL | 32px |
| XXL | 48px |

Aplicação:
- Padding padrão cards: 16px
- Espaço entre seções: 24px
- Margem lateral layout: 32px (desktop)

---

# 🧩 Componentes Base

## 🔘 Botões

### Primary Button
- Background: Primary
- Texto branco
- Border radius: 8px
- Altura padrão: 44px

### Secondary Button
- Background: branco
- Border: Primary
- Texto Primary

### Danger Button
- Background: Danger
- Texto branco

Estados:
- Hover
- Disabled
- Loading

---

## 🧾 Cards

- Background: Surface
- Border radius: 12px
- Shadow leve
- Padding interno: 16px

Uso:
- KPIs
- Cards Kanban
- Resumo Dashboard

---

## 📊 KPI Card

Estrutura:

Título
Valor Principal
Indicador (↑ ou ↓)

Cor do indicador:
- Verde (crescimento)
- Vermelho (queda)

---

## 📋 Tabela

- Header com background neutro
- Hover em linha
- Bordas suaves
- Responsiva com scroll horizontal

---

## 🗂 Kanban Card

- Border radius 8px
- Sombra leve
- Status com label colorida
- Drag & Drop visual consistente

---

# 📱 Responsividade Integrada

O Design System considera:

- Adaptação de grid
- Empilhamento de cards
- Redução de padding em mobile
- Menu colapsável

Nenhum componente deve quebrar abaixo de 320px.

---

# 🔐 Sistema de Estados

## Estados Globais

- Default
- Hover
- Focus
- Active
- Disabled
- Loading

Padronização evita inconsistência de feedback visual.

---

# 🎛 Ícones

- Estilo linear
- Peso uniforme
- Tamanho padrão: 20px ou 24px
- Nunca misturar estilos diferentes

---

# 🔎 Feedback Visual

## Loading
- Spinner centralizado
- Skeleton screen para dashboard

## Erro
- Mensagem clara
- Cor Danger
- Ação recomendada

## Sucesso
- Toast com cor Success

---

# 🧠 Governança Visual

Regras:

- Novos componentes devem seguir tokens definidos
- Não criar cores fora da paleta
- Não alterar espaçamento padrão
- Componentes reutilizáveis devem ser convertidos em Widget padrão no FlutterFlow

---

# 🔄 Versionamento

| Versão | Data | Alterações |
|--------|------|------------|
| 1.0 | Inicial | Estrutura base |

---

# 📌 Conclusão

O Design System garante:

- Consistência
- Escalabilidade SaaS
- Governança visual
- Redução de débito técnico
- Facilidade de manutenção

Ele sustenta a prototipagem, a responsividade e a arquitetura do Web App CRM.