# 📱 RESPONSIVIDADE – Web App CRM

## 📌 Objetivo

Este documento define as diretrizes técnicas de responsividade do Web App CRM,
garantindo:

- Experiência consistente multi-dispositivo
- Escalabilidade de layout
- Padronização de componentes
- Redução de inconsistências visuais
- Previsibilidade no desenvolvimento no FlutterFlow

A responsividade foi planejada antes da implementação, durante a fase de prototipagem.

---

# 🧭 Estratégia de Responsividade

O Web App CRM adota abordagem:

> Desktop-First com adaptação progressiva para Tablet e Mobile.

Justificativa:

- Sistema SaaS corporativo
- Uso predominante em ambiente desktop
- Necessidade de visualização de dashboards e tabelas complexas

---

# 📐 Breakpoints Definidos

| Dispositivo | Largura (px) | Estratégia |
|------------|-------------|------------|
| Desktop | ≥ 1200px | Layout completo com menu expandido |
| Tablet | 768px – 1199px | Menu reduzido + grid adaptado |
| Mobile | ≤ 767px | Drawer + layout vertical |

---

# 🧱 Estrutura de Layout

## 🖥 Desktop

- Menu lateral expandido
- Conteúdo em Grid
- Dashboard com múltiplos KPIs lado a lado
- Kanban com múltiplas colunas visíveis

## 📲 Tablet

- Menu lateral reduzido (ícones)
- Ajuste de padding e espaçamento
- Kanban com scroll horizontal controlado
- Tabelas com overflow responsivo

## 📱 Mobile

- Menu tipo Drawer
- Layout vertical (Stack)
- Cards empilhados
- KPIs reorganizados em coluna única
- Kanban com scroll horizontal

---

# 🔄 Comportamento do Menu

## Desktop

Menu lateral fixo (Expanded)
- Dashboard
- Leads
- Time
- Configurações
- Perfil

## Tablet

Menu reduzido (ícones)
- Tooltip em hover

## Mobile

Drawer:
- Acesso via ícone hamburguer
- Navegação full-width

---

# 📊 Componentes Responsivos

## Dashboard

| Elemento | Desktop | Mobile |
|----------|----------|----------|
| KPIs | 4 colunas | 1 coluna |
| Gráficos | Lado a lado | Empilhados |
| Resumo | Grid | Stack |

---

## Kanban

| Elemento | Desktop | Mobile |
|----------|----------|----------|
| Colunas | Todas visíveis | Scroll horizontal |
| Cards | Altura fixa | Altura adaptável |

---

## Tabela Time

| Elemento | Desktop | Mobile |
|----------|----------|----------|
| Colunas | Visíveis | Scroll horizontal |
| Permissões | Inline | Modal |

---

# 🎨 Sistema de Espaçamento

## Escala Base

- 4px (micro spacing)
- 8px (elementos pequenos)
- 16px (padding padrão)
- 24px (seções)
- 32px+ (blocos estruturais)

---

# 🧠 Decisões de UX

- Evitar colapso excessivo de informação no Mobile
- Manter consistência de hierarquia visual
- Garantir legibilidade mínima 14px
- Priorizar ações principais em telas menores

---

# 🔐 Impacto na Governança Técnica

A padronização da responsividade:

- Reduz débito técnico
- Facilita manutenção
- Melhora previsibilidade de implementação
- Mantém consistência visual multiempresa

---

# 🧪 Critérios de Aceitação

- Layout não quebra em 320px
- Nenhum overflow visual inesperado
- Componentes adaptam corretamente
- Navegação funcional em todos dispositivos

---

# 🔗 Integração com FlutterFlow

Implementado utilizando:

- Conditional Visibility
- Responsive Visibility
- Expanded / Flexible widgets
- Breakpoints nativos da plataforma
- MediaQuery para ajustes específicos

---

# 🏁 Conclusão

A responsividade do Web App CRM foi planejada como parte estrutural da arquitetura,
não como ajuste posterior.

Isso garante:

- Escalabilidade
- Experiência SaaS profissional
- Aderência às boas práticas de UX Engineering
- Base sólida para futuras evoluções