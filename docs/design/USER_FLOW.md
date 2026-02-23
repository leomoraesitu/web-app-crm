# 🔄 USER FLOW -- Web App CRM

## 📌 Objetivo

Este documento descreve os fluxos de navegação e interação do Web App
CRM, garantindo:

-   Clareza na jornada do usuário
-   Rastreabilidade com requisitos
-   Previsibilidade na implementação
-   Separação de responsabilidades (Admin vs Colaborador)
-   Base para testes e validação funcional

------------------------------------------------------------------------

# 👤 Perfis de Usuário

## 1️⃣ Administrador

Permissões: - Gerenciar empresa - Convidar colaboradores - Editar
permissões - Visualizar dashboard - Gerenciar leads - Editar perfil
empresa

## 2️⃣ Colaborador

Permissões: - Visualizar dashboard - Gerenciar leads - Visualizar time -
Editar próprio perfil

------------------------------------------------------------------------

# 🔐 FLUXO 1 -- Autenticação

    [Usuário]
       ↓
    Tela Login
       ↓
    Validação Auth (Firebase)
       ↓
    Identificação companyId
       ↓
    Redirecionamento Dashboard

------------------------------------------------------------------------

# 📊 FLUXO 2 -- Dashboard

    Login
      ↓
    Dashboard
      ↓
    Carregar Leads da Empresa
      ↓
    Calcular KPIs
      ↓
    Renderizar Cards + Gráficos

------------------------------------------------------------------------

# 📋 FLUXO 3 -- Gestão de Leads (Kanban)

## Criar Lead

    Kanban
      ↓
    Botão "Adicionar Lead"
      ↓
    Formulário
      ↓
    Salvar no Firestore
      ↓
    Atualizar Coluna Kanban

## Atualizar Status

    Usuário arrasta Card
      ↓
    Atualiza status no banco
      ↓
    Re-renderiza Kanban
      ↓
    Atualiza KPIs Dashboard

## Editar Lead

    Kanban
      ↓
    Selecionar Lead
      ↓
    Tela Detalhes
      ↓
    Editar Informações
      ↓
    Salvar Atualização

------------------------------------------------------------------------

# 👥 FLUXO 4 -- Gestão de Time (Admin)

## Convidar Colaborador

    Time
      ↓
    Adicionar Colaborador
      ↓
    Inserir Email
      ↓
    Criar registro role=collaborator
      ↓
    Enviar convite

## Editar Permissões

    Selecionar Colaborador
      ↓
    Editar role
      ↓
    Salvar alteração

------------------------------------------------------------------------

# ⚙️ FLUXO 5 -- Configuração da Empresa

    Menu → Configuração Empresa
      ↓
    Editar Nome / Logo
      ↓
    Salvar Atualização
      ↓
    Atualizar contexto global

------------------------------------------------------------------------

# 🏢 FLUXO MULTIEMPRESA

    Usuário autenticado
       ↓
    Identificar companyId
       ↓
    Consultas filtradas por companyId
       ↓
    Isolamento total de dados

------------------------------------------------------------------------

# 🧪 Pontos Críticos para Testes

-   Bloqueio sem autenticação
-   Isolamento entre empresas
-   Controle de menus por role
-   Atualização de KPIs após mudança de lead

------------------------------------------------------------------------

# 📌 Conclusão

O USER FLOW conecta:

Prototipagem → Modelagem de Dados → Implementação → Testes

Ele formaliza a jornada do usuário e sustenta a governança técnica do
Web App CRM.
