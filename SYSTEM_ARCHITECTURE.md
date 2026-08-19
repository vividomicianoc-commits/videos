# SYSTEM_ARCHITECTURE.md

## Princípio: Claude Code é o cérebro, não todas as ferramentas (#94)

O sistema separa três camadas de dado (#67): **RAW** (métricas, vídeos, transcrições) →
**STRUCTURED** (Video DNA, content records, creator profiles) → **INTELLIGENCE**
(insights, padrões, recomendações, decisões). Só o que é INTELLIGENCE é proprietário
e precisa ser possuído por você para sempre.

---

## Fluxo geral

```
┌─────────────────────────────────────────────────────────────────────┐
│  FONTES DE DADOS                                                      │
│  Instagram · TikTok · YouTube · LinkedIn · Calendar · Gmail ·        │
│  Creators (público) · Web/Trends · Shopify · comentários/DMs         │
└───────────────┬─────────────────────────────────────────────────────┘
                │
                ▼  CONECTORES (Supermetrics, Google, Notion, Shopify, WebSearch)
┌─────────────────────────────────────────────────────────────────────┐
│  INGESTÃO  — scripts + conectores puxam dados em cadência             │
└───────────────┬─────────────────────────────────────────────────────┘
                │
                ▼
┌─────────────────────────────────────────────────────────────────────┐
│  ARMAZENAMENTO                                                        │
│  RAW → Drive / Supabase Storage       STRUCTURED → Supabase (SQLite  │
│  no bootstrap)     MEMÓRIA/PLAYBOOK → Markdown no git + Notion        │
│  Toda linha externa carrega PROVENANCE: source, date, url, method,   │
│  confidence (#68).                                                    │
└───────────────┬─────────────────────────────────────────────────────┘
                │
                ▼
┌─────────────────────────────────────────────────────────────────────┐
│  AGENTES DE IA (subagentes especializados)                           │
│  creator-intelligence · video-intelligence · trend-intelligence ·   │
│  market-intelligence · audience-intelligence · brand-guardian        │
└───────────────┬─────────────────────────────────────────────────────┘
                │
                ▼
┌─────────────────────────────────────────────────────────────────────┐
│  DECISION ENGINE → CHIEF OF CONTENT                                   │
│  Cruza tudo + Constituição de Marca → "O que a Vitória faz hoje?"    │
│  Toda saída é DECISÃO, não relatório (#43).                          │
└───────────────┬─────────────────────────────────────────────────────┘
                │
                ▼
┌─────────────────────────────────────────────────────────────────────┐
│  PRODUÇÃO  (Canva · Adobe · Gamma · Descript · script-writer)        │
└───────────────┬─────────────────────────────────────────────────────┘
                │
                ▼
┌─────────────────────────────────────────────────────────────────────┐
│  APROVAÇÃO HUMANA  — Claude prepara → Vitória aprova → sistema publica│
│  (Notion board). Níveis de automação por risco: AUTO/APPROVAL/HUMAN. │
└───────────────┬─────────────────────────────────────────────────────┘
                │
                ▼
┌─────────────────────────────────────────────────────────────────────┐
│  PUBLICAÇÃO  (Metricool/Postiz ou APIs oficiais)                      │
└───────────────┬─────────────────────────────────────────────────────┘
                │
                ▼
┌─────────────────────────────────────────────────────────────────────┐
│  ANALYTICS → LEARNING  (Weekly Growth Analyst · autópsias ·          │
│  experimentos) → UPDATE MEMORY → volta ao topo                       │
└─────────────────────────────────────────────────────────────────────┘
```

---

## Decisões de arquitetura

**Memória (#66):** camadas simples, sem tecnologia complexa sem necessidade.
- **Constituição de marca / playbook / aprendizados** → Markdown versionado no git (`brand/`, `intelligence/`). Legível, auditável, portátil.
- **Dados estruturados e séries temporais** → SQLite no bootstrap → **Supabase (Postgres)** em produção.
- **Boards operacionais (conteúdo, CRM, oportunidades)** → Notion.
- **Vector DB:** só se a busca semântica sobre milhares de Video DNAs justificar (Fase 8). Não antes.

**Provenance & confiança (#68/#69):** todo dado externo grava origem, data, URL, método
e confiança. Toda inferência é marcada FACT / INFERENCE / HYPOTHESIS com nível HIGH/MEDIUM/LOW.

**Níveis de automação (#70):** cada função recebe `AUTO`, `APPROVAL REQUIRED` ou `HUMAN ONLY`.
Começa conservador; sobe automação só em funções de baixo risco com histórico bom.

**Efêmero-safe:** como o container é reconstruído a cada sessão, o estado durável vive
em git + Supabase + Notion + Drive — nunca só no disco local.

**Carga mental como KPI (#71):** o sistema mede tarefas automatizadas, trabalho manual
eliminado e decisões pré-preparadas. Objetivo é você viver/criar/decidir mais e operar menos.
