# Contributing Guide --- Web App CRM (FlutterFlow + Firebase)

Obrigado por contribuir com o **Web App CRM**. Este repositório é um
projeto de portfólio com foco em boas práticas de Engenharia de
Software, UX/UI, Segurança, Governança e Agile delivery.

------------------------------------------------------------------------

## 1) Código de Conduta (resumo)

-   Seja respeitoso e objetivo.
-   Críticas devem ser técnicas e acionáveis.
-   Nenhuma informação sensível (chaves, tokens, dados pessoais) deve
    ser compartilhada em issues/PRs.

------------------------------------------------------------------------

## 2) Stack e Contexto

-   FlutterFlow (UI/fluxos/actions)
-   Firebase (Firestore, Auth, Storage, Functions quando aplicável)
-   Ambientes: Dev e Prod (sempre que possível, isolados)

------------------------------------------------------------------------

## 3) Fluxo de Contribuição

1.  Criar/assumir card no Trello.
2.  Criar branch a partir de `develop`.
3.  Implementar seguindo padrões deste documento.
4.  Atualizar documentação e evidências.
5.  Abrir Pull Request.
6.  Realizar Squash and Merge com Conventional Commit.

------------------------------------------------------------------------

## 4) Branch Strategy

-   main: estável / releases
-   develop: integração contínua
-   feat/`<slug>`{=html}: funcionalidades
-   fix/`<slug>`{=html}: correções
-   chore/`<slug>`{=html}: manutenção
-   docs/`<slug>`{=html}: documentação
-   hotfix/`<slug>`{=html}: correção crítica

Exemplos: - feat/leads-kanban-crud - fix/firestore-rules-deny -
docs/readme-update

------------------------------------------------------------------------

## 5) Conventional Commits (obrigatório)

Formato:

`<tipo>`{=html}(`<escopo>`{=html}): descrição curta

Tipos: - feat - fix - docs - style - refactor - perf - test - build -
ci - chore

Exemplos: - feat(leads): implement kanban CRUD - fix(storage): resolve
CORS for web uploads - chore(env): add dev/prod setup templates

------------------------------------------------------------------------

## 6) Definition of Done

-   Implementação concluída
-   Sem erros críticos
-   Regras de segurança respeitando menor privilégio
-   Sem segredos versionados
-   Documentação atualizada
-   Evidências salvas em docs/qa/test-evidence/

------------------------------------------------------------------------

## 7) Segurança

Nunca versionar: - google-services.json - GoogleService-Info.plist - API
keys - Tokens e secrets

Sempre utilizar controle por auth.uid quando houver autenticação.

------------------------------------------------------------------------

## 8) Versionamento

Seguimos SemVer:

-   MAJOR: breaking change
-   MINOR: nova feature
-   PATCH: bugfix

------------------------------------------------------------------------

## 9) Documentação

Mudanças relevantes devem atualizar: - README.md - docs/ (arquitetura,
ambientes, QA)

Documentação faz parte do entregável técnico do projeto.

------------------------------------------------------------------------
