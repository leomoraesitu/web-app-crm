flowchart TD
    A["Collection: companies"] --> B["Document: empresa_id"]
    B --> B1["nome: string"]
    B --> B2["logo: string"]
    B --> B3["adminRef: reference(users)"]
    B --> B4["usersRefList: array<reference(users)>"]

    A --> C["Subcollection: leads"]
    C --> D["Document: lead_id"]
    D --> D1["nome: string"]
    D --> D2["descritivo: string"]
    D --> D3["fonte: string"]
    D --> D4["status: string"]
    D --> D5["email: string"]
    D --> D6["telefone: string"]
    D --> D7["dataCriacao: timestamp"]
    D --> D8["userRef: reference(users)"]
    D --> D9["userNome: string"]
    D --> D10["userLogo: string"]

    A --> E["Subcollection: fonteLeads"]
    E --> F["Document: id"]
    F --> F1["nome: string"]
    F --> F2["leads: array<reference(leads)>"]

    G["Collection: users"] --> H["Document: uid"]
    H --> H1["display_name: string"]
    H --> H2["email: string"]
    H --> H3["photo_url: string"]
    H --> H4["isAdmin: boolean"]
    H --> H5["empresaRef: reference(companies)"]
    H --> H6["totalLeads: int"]
    H --> H7["totalLigacoes: int"]
    H --> H8["totalReunioes: int"]
    H --> H9["totalVendas: int"]

    H5 -. referencia .-> B
    B3 -. adminRef .-> H
    D8 -. responsavel .-> H
    F2 -. refs .-> D