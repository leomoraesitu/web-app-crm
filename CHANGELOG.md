# Changelog

Todos os marcos relevantes deste projeto são documentados neste arquivo.

O formato segue o padrão *Keep a Changelog*  
Este projeto utiliza *Semantic Versioning (SemVer)*.

---

## [Unreleased]

### Planned
- Segurança avançada (RBAC completo com Custom Claims)
- Testes com Firebase Emulator
- Cobertura de testes (Leads e Dashboard)
- CI/CD com GitHub Actions
- Observabilidade (logs + métricas)
- Otimização de queries e índices Firestore

---

## [0.3.0] — Backend, QA e Environments (Sprint 4)
Data: 2026-03-26

### Added
- Integração com Firebase Authentication
- Integração com Firestore (estrutura inicial funcional)
- Estrutura multi-tenant baseada em `empresaRef`
- Criação automática de empresa no cadastro
- Associação usuário ↔ empresa
- Camada de abstração (`AuthFacade`)
- Testes automatizados:
  - Integration Tests (fluxos completos)
  - Widget Tests (UI e validação)
  - Unit Tests (regras de negócio)
- Documentação completa de QA (`/docs/qa`)
- Estrutura formal de environments:
  - Dev
  - Staging
  - Prod
- Deploy produtivo consolidado (Web)
- Estratégia de documentação corporativa (`/docs`)

### Changed
- Refatoração do fluxo de autenticação
- Separação de responsabilidades (UI vs lógica)
- Padronização de validação de formulários
- Melhoria na navegação pós-login/cadastro
- Organização do README com foco em SaaS publicado

### Fixed
- Correção do fluxo de login após criação de conta
- Correção de navegação para empresa após cadastro
- Ajustes em validações de formulário
- Correção de estados inconsistentes na autenticação

### QA
- Total de testes: **7**
- Sucesso: **100%**
- Execução determinística
- Cobertura dos fluxos críticos:
  - Login (success/error)
  - Cadastro (success/error)
  - Validação de formulário
  - Navegação

### Notes
Esta versão marca a transição de **frontend funcional** para um **SaaS operacional com backend integrado**, incluindo:

- Base multi-tenant
- Estrutura de ambientes
- Primeira camada de QA automatizado

---

## [0.2.0] — Implementação de Telas (Sprint 3)
Data: 2026-03-03

### Added
- Design System aplicado às telas reais
- Menu responsivo (Desktop / Tablet)
- Menu Hamburger (Mobile)
- Dashboard estruturado (tabelas + gráficos)
- Estrutura inicial do Kanban
- Componentes Pop-ups e Bottom Sheet
- Tela de Login e Cadastro
- Dark Mode e Light Mode
- Animações no FlutterFlow
- Deploy Web publicado
- Distribuição de APK Android via GitHub Releases

### Changed
- Conversão da prototipagem em UI funcional responsiva
- Organização e componentização das telas
- Consolidação da base visual para integração backend
- Atualização do README com badges e link para release

### Notes
Versão focada em UX/UI e preparação para integração backend.

---

## [0.1.0] — Prototipagem Inicial (Sprint 2)
Data: 2026-02-26

### Added
- Estrutura inicial das telas
- Organização de navegação
- Aplicação inicial do Design System
- Estrutura base do Dashboard
- Estrutura preliminar do Kanban
- Documentação inicial do projeto

### Decisions
- Adoção de FlutterFlow como camada de UI
- Estrutura de versionamento SemVer
- Organização do repositório com `/docs`

---

## [0.0.1] — Project Bootstrap
Data: 2026-02-26

### Added
- Código base exportado do FlutterFlow
- Estrutura inicial do repositório
- Configuração de versionamento
- Templates de Pull Request
- Organização inicial de governança técnica

---

# Links de Comparação

[Unreleased]: https://github.com/leomoraesitu/web-app-crm/compare/v0.3.0...HEAD
[0.3.0]: https://github.com/leomoraesitu/web-app-crm/compare/v0.2.0...v0.3.0
[0.2.0]: https://github.com/leomoraesitu/web-app-crm/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/leomoraesitu/web-app-crm/compare/v0.0.1...v0.1.0
[0.0.1]: https://github.com/leomoraesitu/web-app-crm/releases/tag/v0.0.1