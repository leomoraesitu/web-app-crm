erDiagram
    USERS {
        string uid PK
        string display_name
        string email
        string photo_url
        boolean isAdmin
        reference empresaRef FK
        int totalLeads
        int totalLigacoes
        int totalReunioes
        int totalVendas
    }

    COMPANIES {
        string empresa_id PK
        string nome
        string logo
        reference adminRef FK
        array usersRefList
    }

    LEADS {
        string lead_id PK
        string nome
        string descritivo
        string fonte
        string status
        string email
        string telefone
        timestamp dataCriacao
        reference userRef FK
        string userNome
        string userLogo
    }

    FONTE_LEADS {
        string id PK
        string nome
        array leads
    }

    COMPANIES ||--o{ USERS : "possui"
    COMPANIES ||--o{ LEADS : "possui"
    COMPANIES ||--o{ FONTE_LEADS : "categoriza"
    USERS ||--o{ LEADS : "responsavel_por"
    USERS ||--|| COMPANIES : "administra"
    FONTE_LEADS ||--o{ LEADS : "origina"