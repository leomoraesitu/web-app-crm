# 📐 Prototipagem – Web App CRM

## 📌 Objetivo

A prototipagem do Web App CRM foi realizada com o objetivo de:

- Validar requisitos funcionais levantados na fase de análise
- Traduzir regras de negócio em fluxos navegáveis
- Reduzir retrabalho antes da implementação no FlutterFlow
- Garantir aderência à persona definida
- Planejar responsividade e comportamento multi-dispositivo

A prototipagem foi desenvolvida seguindo a metodologia:

Problema → Design → Solução → Banco de Dados

---

## 🎯 Escopo da Prototipagem

### Telas contempladas

- Tela de Login / Cadastro
- Dashboard
- Leads (Kanban)
- Adicionar Lead
- Detalhes do Lead
- Time (Tabela)
- Adicionar Colaborador
- Permissões
- Perfil Empresa
- Perfil Usuário
- Configurações

---

## 🧱 Nível de Fidelidade

| Tipo | Aplicado |
|------|----------|
| Baixa Fidelidade | ❌ |
| Média Fidelidade | ✅ Wireframes estruturais |
| Alta Fidelidade | ✅ Design final |

---

## 🔁 User Flow Principal

Login  
→ Dashboard  
→ Leads (Kanban)  
→ Detalhes do Lead  
→ Atualizar Status  
→ Dashboard  

Fluxos administrativos:

Admin  
→ Time  
→ Editar Permissões  
→ Configuração Empresa  

---

## 🧭 Decisões de UX

- Kanban para visualização clara do pipeline
- Dashboard com KPIs estratégicos
- Separação Admin/Colaborador (governança multiempresa)
- Menu lateral responsivo
- Estrutura SaaS escalável

---

## 📱 Responsividade Planejada

| Dispositivo | Menu | Layout |
|------------|------|--------|
| Desktop | Lateral Expandido | Grid |
| Tablet | Menu Reduzido | Grid Adaptado |
| Mobile | Drawer | Layout Vertical |

---

## 🧪 Critérios de Aceitação

- Todos requisitos funcionais mapeados
- Fluxos críticos navegáveis
- Responsividade validada
- Estrutura compatível com modelagem NoSQL

---

## 🔗 Conexão com Banco de Dados

A prototipagem foi estruturada considerando:

- Multiempresa
- Controle de permissões
- Relação Empresa → Colaboradores → Leads
- Governança por papel (Admin vs Colaborador)

---

## 🏁 Conclusão

A prototipagem serviu como artefato formal de validação de requisitos e base estrutural para implementação no FlutterFlow e integração com Firebase.