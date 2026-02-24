# Modelo Conceitual — CRM Multiempresa (v1.0)

```mermaid
erDiagram
  ADMIN ||--|| EMPRESA : "possui"
  EMPRESA ||--o{ COLABORADOR : "possui"
  EMPRESA ||--o{ LEAD : "possui"

  ADMIN {
    string id
    string name
    string email
  }

  EMPRESA {
    string id
    string nome
    string plano
    datetime createdAt
  }

  COLABORADOR {
    string id
    string nome
    string email
    string role
    boolean ativo
  }

  LEAD {
    string id
    string nome
    string email
    string telefone
    string status
    datetime createdAt
  }