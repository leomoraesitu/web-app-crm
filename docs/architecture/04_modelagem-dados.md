
# Modelo Físico de Dados
## Banco NoSQL Orientado a Documentos (Cloud Firestore)

## 1. Visão Geral

O banco de dados do **Web App CRM** utiliza **Cloud Firestore**, um banco NoSQL orientado a documentos.

O modelo foi projetado considerando:

- escalabilidade horizontal
- baixa latência de leitura
- isolamento multi-tenant
- consultas otimizadas para interface Kanban e Dashboard

A estrutura segue o padrão:

Coleções → Documentos → Campos

---

# 2. Estrutura Geral do Banco

```
companies
├── users
└── leads
    └── fonteLeads
```

Estrutura conceitual:

```
Empresa
├── Usuários
└── Leads
    └── Fonte do Lead
```

Cada empresa possui seus próprios usuários e leads.

---

# 3. Estratégia Multi-Tenant

O sistema utiliza um modelo **multi-tenant baseado em referência de empresa**.

Cada usuário possui um campo:

```
empresaRef → reference(companies)
```

Esse campo determina a qual empresa o usuário pertence.

Todos os dados consultados no sistema são filtrados por essa referência.

Benefícios:

- isolamento de dados entre empresas
- controle de acesso simplificado
- escalabilidade do modelo SaaS

---

# 4. Coleção: users

Coleção responsável por armazenar os usuários da aplicação.

Collection: users

## Estrutura do Documento

```
uid            string
display_name   string
email          string
photo_url      string
isAdmin        boolean
empresaRef     reference(companies)
totalLeads     int
totalLigacoes  int
totalReunioes  int
totalVendas    int
```

## Descrição dos Campos

| Campo | Tipo | Descrição |
|------|------|-----------|
| uid | string | Identificador do usuário (Firebase Auth) |
| display_name | string | Nome do usuário |
| email | string | Email do usuário |
| photo_url | string | URL da foto do usuário |
| isAdmin | boolean | Define se o usuário possui privilégios administrativos |
| empresaRef | reference | Referência para a empresa do usuário |
| totalLeads | int | Quantidade total de leads atribuídos |
| totalLigacoes | int | Total de leads em estágio "Ligação" |
| totalReunioes | int | Total de leads em estágio "Reunião" |
| totalVendas | int | Total de vendas realizadas |

---

# 5. Coleção: companies

Coleção responsável por armazenar as empresas cadastradas no sistema.

Collection: companies

## Estrutura do Documento

```
empresa_id   string
nome         string
logo         string
adminRef     reference(users)

usersRefList array<reference(users)>

listaContagens array<leadsRefLigacoes(ref), leadsRefReunioes(ref), leadsRefVendas(ref)>

```

## Descrição dos Campos

| Campo | Tipo | Descrição |
|------|------|-----------|
| empresa_id | string | Identificador da empresa |
| nome | string | Nome da empresa |
| logo | string | URL da logo |
| adminRef | reference | Usuário administrador da empresa |
| usersRefList | array<reference(users)> | Lista de usuários vinculados |
| listaContagens | array<leadsRefLigacoes(ref), leadsRefReunioes(ref), leadsRefVendas(ref)> | Lista de totais vinculados |

---

# 6. Subcoleção: leads

Cada empresa possui sua própria subcoleção de leads.

```
companies
└── leads
```

## Estrutura do Documento

```
lead_id       string
nome          string
descritivo    string
fonte         string
email         string
telefone      string
status        string

dataCriacao   timestamp

userRef       reference(users)
userNome      string
userLogo      string
```

## Descrição dos Campos

| Campo | Tipo | Descrição |
|------|------|-----------|
| lead_id | string | Identificador do lead |
| nome | string | Nome do lead |
| descritivo | string | Descrição do lead |
| fonte | string | Origem do lead |
| status | string | Status no funil de vendas |
| email | string | Email do lead |
| telefone | string | Telefone do lead |
| dataCriacao | timestamp | Data de criação do lead |
| userRef | reference | Usuário responsável |
| userNome | string | Nome do usuário responsável |
| userLogo | string | Foto do usuário responsável |

---

# 7. Subcoleção: fonteLeads

Coleção utilizada para categorizar a origem dos leads.

```
companies
└── fonteLeads
```

## Estrutura do Documento

```
id     string
nome   string
leads  array<reference(leads)>
```

---

# 8. Status do Funil de Vendas

O campo `status` define o estágio do lead no funil.

Valores possíveis:

```
Novo Lead
Em Ligação
Reunião Agendada
Venda Realizada
Perdido
```

Esses status são utilizados para:

- visualização no Kanban
- métricas do Dashboard
- cálculo de conversão

---

# 9. Estratégia de Referências

O modelo utiliza **references em vez de joins**, seguindo boas práticas de Firestore.

Principais relações:

```
users → empresaRef → companies
leads → userRef → users
companies → usersRefList → users
```

Benefícios:

- leitura rápida
- consultas simples
- baixo custo de operação

---

# 10. Estratégia de Performance

Para melhorar performance de consultas foram aplicadas as seguintes estratégias.

## Desnormalização controlada

Campos replicados:

```
userNome
userLogo
```

Isso evita consultas adicionais ao buscar leads.

---

## Campos agregados

Campos agregados no usuário:

```
totalLeads
totalLigacoes
totalReunioes
totalVendas
```

Isso permite carregar o Dashboard com menos consultas.

---

# 11. Índices Recomendados

Para consultas do Kanban e Dashboard recomenda-se índices compostos.

```
empresaRef + status
userRef + status
empresaRef + dataCriacao
```

---

# 12. Considerações Arquiteturais

Este modelo foi projetado considerando:

- arquitetura SaaS multi-tenant
- escalabilidade horizontal
- baixo custo de leitura no Firestore
- compatibilidade com FlutterFlow
- otimização para consultas do Dashboard

---

# 13. Próximas Evoluções (Sprint 4)

A próxima etapa do projeto inclui:

- integração completa CRUD com Firestore
- regras de segurança RBAC
- filtros multi-tenant
- índices compostos
- métricas do Dashboard baseadas em consultas reais

---

## Observação

Este modelo representa a **implementação física atual do banco** e pode evoluir conforme novas funcionalidades sejam implementadas.
