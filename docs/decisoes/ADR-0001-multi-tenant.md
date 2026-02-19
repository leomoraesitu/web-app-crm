# ADR-0001 – Estratégia Multi-Tenant

## Contexto
Necessidade de suportar múltiplas empresas.

## Decisão
Uso de `companyId` em todas as entidades.

## Alternativas
- Banco separado por empresa (descartado)

## Consequências
- Simplicidade
- Escalabilidade
- Dependência de regras de segurança bem definidas
