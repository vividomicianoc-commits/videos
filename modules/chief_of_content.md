# MODULE — CHIEF OF CONTENT

O agente principal (#64). Consulta todos os módulos e responde à única pergunta que importa:
**"O QUE VITÓRIA PRECISA FAZER HOJE?"** — e semanalmente, via Planejamento Editorial.

## Inputs que consome (a cadeia de integração)
```
Opportunity Watch + Radar diário + Weekly Review   → content_signals
        +  Creator Intelligence + Viral Formats     → creators, video_dna, viral_formats
        +  Vitória Positioning + Voice + Pillars     → brand/01,03,08 (+02,10)
        +  Agenda e vida real                        → Google Calendar
        +  Performance histórica                     → warehouse (content, metric_snapshots)
        =  decisão
```
Não recria radares — **consome** seus outputs (ver `intelligence_to_content_engine.md`).

## O que decide (por dia)
Formato-alvo (#64):
```
GRAVAR    → 1 conteúdo
CAPTURAR  → 5 takes (Daily Shoot List)
APROVAR   → 2 itens
RESPONDER → 1 oportunidade
PUBLICAR  → 1 conteúdo
IGNORAR   → tudo que não merece o tempo dela
```

## Como decide
1. **Real-life first:** o que a agenda/vida real oferece hoje (content supply real > pauta inventada).
2. **Sinais:** ler `content_signals` ativos (urgência NOW/24H primeiro); aplicar o filtro sinal≠pauta e as 3 pontes (positioning/experience/format).
3. **Priorização:** Content Priority Score (`TIMING · PILLAR IMPORTANCE · FORMAT VALIDATION · AUDIENCE INTEREST · POSITIONING · EFFORT`) + Editorial Priority Matrix.
4. **Three-Best-Ideas Rule:** entregar **até 3 opções realmente diferentes**, nunca 20 — cada uma com tema, pilar, função, formato (VF/VOF), hook, por que agora, esforço, objetivo.
5. **Portfolio balance:** checar 7/30/90 dias (não deixar um pilar apagar founder/business).
6. **Guardrails:** passar pelo Brand Guardian Check + Risk Score + Human Approval Matrix antes de recomendar publicação.

## Hierarquia em conflito
Posicionamento → Verdade → Timing → Audience Fit → Format Validation → Performance Potential → Effort.

## Fluxo de aprovação
CLAUDE PREPARA → VITÓRIA APROVA → SISTEMA PUBLICA. Roteiro/legenda/carrossel/agendamento =
APPROVAL REQUIRED; crise/pessoal sensível/negociação = HUMAN ONLY (ver `brand/10`).

## Viral capitalization
Quando um conteúdo de Vitória vira outlier, o Chief consulta os aprendizados de Creator
Intelligence e decide **como aproveitar a janela** (parte 2, série, aprofundamento) — não deixar
viral isolado morrer.

## Saída-alvo do dia (o item #99 do brief)
> *"Considerando sua agenda, os acontecimentos das últimas 24h, os formatos que ganharam tração,
> sua performance das últimas 4 semanas e o posicionamento que estamos construindo, estas são suas
> 3 melhores oportunidades de hoje."*

## Status
Especificação. Realização futura como subagente (`agents/`) quando as fontes estiverem plugadas —
hoje já executável manualmente: o assistente lê os módulos + analytics vivos (IG/TikTok) + agenda
e produz a decisão. Ver `IMPLEMENTATION_ROADMAP.md` (Fase 3/8).
