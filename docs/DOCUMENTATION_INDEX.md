# 📚 Documentation Index — Web App CRM

Este documento centraliza e organiza toda a documentação técnica do
projeto **Web App CRM (FlutterFlow + Firebase)**.

Objetivo: garantir rastreabilidade, governança técnica e clareza arquitetural.

---

# 🗂 Estrutura da Documentação

## 1️⃣ Arquitetura e Engenharia

Localização: `/docs/architecture/`

| Documento | Descrição |
|------------|------------|
| [00_visao-geral.md](./architecture/00_visao-geral.md) | Contexto do projeto, objetivos e proposta de valor |
| [01_requisitos.md](./architecture/01_requisitos.md) | Requisitos funcionais e não funcionais |
| [02_ux-ui.md](./architecture/02_ux-ui.md) | Estratégia de UX/UI e experiência do usuário |
| [03_arquitetura.md](./architecture/03_arquitetura.md) | Visão arquitetural e padrões adotados |
| [04_modelagem-dados.md](./architecture/04_modelagem-dados.md) | Modelo conceitual, lógico e físico (Firestore) |
| [05_seguranca-privacidade.md](./architecture/05_seguranca-privacidade.md) | Estratégias de segurança e isolamento multi-tenant |
| [06_gestao-projeto.md](./architecture/06_gestao-projeto.md) | Metodologia, roadmap e organização ágil |
| [DIAGRAMA_ARQUITETURAL.md](./architecture/DIAGRAMA_ARQUITETURAL.md) | Diagrama arquitetural detalhado |

---

## 2️⃣ Design e Experiência

Localização: `/docs/design/`

| Documento | Descrição |
|------------|------------|
| [README.md](./design/README.md) | Visão geral da documentação de design |
| [PROTOTIPAGEM.md](./design/PROTOTIPAGEM.md) | Wireframes e validação de fluxos |
| [USER_FLOW.md](./design/USER_FLOW.md) | Fluxos de navegação e autorização |
| [RESPONSIVIDADE.md](./design/RESPONSIVIDADE.md) | Estratégia multi-dispositivo |
| [DESIGN_SYSTEM.md](./design/DESIGN_SYSTEM.md) | Tokens, componentes e padronização visual |
| [RASTREABILIDADE_REQUISITOS.md](./design/RASTREABILIDADE_REQUISITOS.md) | Matriz de rastreabilidade |

### 🎨 Assets de Design

Localização: `/docs/design/assets/`

- `prototipagem/low-fidelity/` → Wireframes (WF-*)
- `prototipagem/high-fidelity/` → Design final (HF-*)
- `brand/` → Identidade visual (BRAND-*)
- `diagrams/` → Diagramas visuais do sistema

---

## 3️⃣ Decisões Arquiteturais (ADRs)

Localização: `/docs/decisions/`

| Documento | Descrição |
|------------|------------|
| ADR-0001-multi-tenant.md | Estratégia de isolamento multiempresa por `companyId` |

Cada ADR documenta:
- Contexto
- Decisão tomada
- Alternativas avaliadas
- Consequências técnicas

---

## 4️⃣ Documentos Globais

| Documento | Localização |
|------------|------------|
| CHANGELOG.md | Raiz do projeto |
| README.md | Raiz do projeto |

---

# 🏛 Padrões de Documentação

- Versionamento Semântico (SemVer)
- Conventional Commits
- Rastreabilidade entre requisitos → implementação → release
- Arquitetura Multi-tenant por `companyId`
- Governança baseada em boas práticas de Engenharia de Software
- Separação clara entre Arquitetura, Design e Decisões

---

# 📌 Fluxo Recomendado de Leitura

1. 00_visao-geral  
2. 01_requisitos  
3. 02_ux-ui  
4. 03_arquitetura  
5. 04_modelagem-dados  
6. 05_seguranca-privacidade  
7.  PROTOTIPAGEM  
8.  DESIGN_SYSTEM  
9.  ADRs  
10. CHANGELOG  

---

# 🚀 Objetivo do Projeto

Este repositório foi estruturado como um case completo de engenharia
aplicada a um CRM SaaS realista, demonstrando:

- Arquitetura escalável
- Segurança e isolamento de dados
- Governança técnica
- Organização ágil
- Processo completo de UX (Wireframe → High Fidelity)
- Documentação corporativa estruturada