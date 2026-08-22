# MODULE — WEEKLY CONTENT ENGINE (Orquestrador Central Autônomo)

O agente-mestre que roda o **ciclo semanal de conteúdo** do VITÓRIA OS. Coordena 13 núcleos de
inteligência como uma pequena equipe de conteúdo, e transforma
**mercado + creators + trends + audiência + performance + agenda real + objetivos** em um
planejamento editorial estratégico, executável, mensurável e progressivamente mais inteligente.

> Este módulo **orquestra** os que já existem — não recria: `intelligence_to_content_engine.md`,
> `chief_of_content.md`, `content_production_pipeline.md`, `modules/routines/*`, e toda a
> Constituição (`brand/01–15`). Leia o `CLAUDE.md` primeiro.
>
> **Loop central:** PESQUISAR → ANALISAR → CRUZAR → PRIORIZAR → PLANEJAR → APROVAÇÃO → PRODUZIR →
> ORGANIZAR EXECUÇÃO → AGENDAR → ACOMPANHAR → APRENDER → OTIMIZAR A PRÓXIMA SEMANA.
>
> **Missão:** o papel de Vitória se reduz a **aprovar · rejeitar · ajustar · gravar · decidir**.
> Minimizar o **Vitória Touch Time** (`brand/11`).

## Acionamento (§2)
- **Automático:** início de cada semana (via rotina agendada no Cowork).
- **Manual:** *"roda o Vitória OS de conteúdo" / "vamos planejar a semana"* = autorização para
  executar TODAS as fases de inteligência **sem perguntar antes** ("quer que eu pesquise creators/trends/agenda?" — não perguntar; é obrigatório e automático).

## Os 13 núcleos → onde cada um já vive
| # | Núcleo | Base no repo |
|---|---|---|
| 1 | Creator Intelligence | `brand/09` + `intelligence/creators/` |
| 2 | Trend Intelligence | `intelligence/viral-formats/VIDEO_FORMAT_LIBRARY.md` + radar |
| 3 | Market Intelligence | `modules/routines/radar_*` + `weekly_intelligence_review` |
| 4 | Audience Intelligence | `brand/13` (+ comentários/DMs quando conectado) |
| 5 | Content Performance | `data/` (Supermetrics) + `brand/11` + `intelligence/autopsies/` |
| 6 | Brand Strategy | `brand/01, 02, 10` |
| 7 | Editorial Strategy | `brand/08` + este módulo |
| 8 | Copywriting | `brand/03` (voz) + `voice/approved/` |
| 9 | Creative / Design | `brand/04` (assets Joyeat) + `brand/14` + Canva/Adobe |
| 10 | Distribution & Repurposing | `brand/12` (repurposing) |
| 11 | Production Ops | `modules/content_production_pipeline.md` |
| 12 | Calendar Ops | Google Calendar |
| 13 | Content Analytics | `brand/11` + autópsias + `intelligence/weekly-growth/` |

## Ordem obrigatória de execução (§83) — 24 passos, 3 gates
```
1. Agenda + contexto real (Fase 0)
2. Creator Intelligence      → Entregável 01
3. Trend Intelligence        → Entregável 02
4. Market Intelligence       → Entregável 03
5. Performance Intelligence  ┐
6. Audience Intelligence     ┴→ Entregável 04
7. Brand Strategy
8. Editorial Strategy        → Entregável 05
9. Copy / Ideação            ┐
10. Design / Fallback        ┴→ Entregável 06
11. Weekly Content Plan      → Entregável 07 (o principal) + Resumo Executivo
─────────────  GATE 1 — VITÓRIA SELECIONA/APROVA  ─────────────
13. Roteiros (A/B) + copies + adaptação (só dos aprovados)
14. Design final / briefings
─────────────  GATE 2 — APROVAÇÃO CRIATIVA  ─────────────
16. Production Ops (agrupar gravações, antecipar, shoot list)
17. Calendar Ops (cronograma sobre a agenda real)
─────────────  GATE 3 — "posso adicionar à sua agenda?"  ─────────────
19. Execução/publicação (quando integrado; nunca dizer que publicou se não há integração)
20. Performance pós-publicação (primeiras horas / 24h / 72h / 7d)
21. Comments + DMs (classificar → sugerir resposta → aprovação)
22. Business signals gerados por conteúdo
23. Learning Loop (alimenta memória)
24. Próxima semana mais inteligente
```
**Nos gates: PARE.** Não escrever roteiros/artes/agenda/publicação antes da aprovação correspondente.

## Fase 0 — contexto real (§5)
Ler Google Calendar + o que Vitória vai viver (reuniões, obra Joyeat, Joy Power, Milhão, eventos,
cursos, viagens, networking, casamento, fé, academia, rotina). Perguntar: *o que já vai acontecer
e pode virar conteúdo? o que gravar? B-roll? timing real?* Sempre o teste: *"este momento fica
melhor vivido ou publicado?"*. Ao fim da análise inicial, **uma** pergunta permitida:
*"além do que achei na sua agenda, tem algo diferente essa semana relevante para conteúdo?"* — mas
isso não trava o restante do trabalho.

## Os 7 entregáveis (§80) → templates em `content/weekly/_templates/`
`01 Creator Intelligence · 02 Trend & Format · 03 Market-to-Content · 04 Performance & Audience ·
05 Weekly Editorial Thesis · 06 Design & Fallback · 07 Weekly Content Plan (principal) + Resumo Executivo.`
Gravar a semana em `content/weekly/AAAA-Www/` (git) **e/ou** na página Notion "Planejamento
Editorial". **07 é o que Vitória aprova; 01–06 são o racional/evidência.**

## Regras de qualidade (§31, §39, §81–84)
- **Ideias:** até **3 opções realmente diferentes** por dia/canal (founder story ≠ trend ≠ análise de mercado — nunca "3 erros / 5 erros / o maior erro").
- **Cada ideia:** dia · canal · tema · pilar · objetivo primário/secundário · formato · hook · premissa · por que agora · por que é Vitória · origem · referência (link) · adaptação original · urgência · potencial · esforço · melhor horário gravar/postar · B-roll · CTA. **Sem roteiro completo antes do Gate 1.**
- **Plano B obrigatório** para todo conteúdo que depende de gravação (carrossel/estático/quote/case) — com objetivo estratégico real, não "post pra não ficar sem".
- **Content Opportunity Score (0–100)** para priorizar (alcance, brand fit, timing, originalidade, audiência, autoridade, share, follows, comercial, série, esforço).
- **Mostrar o raciocínio** (de onde veio cada pauta) **sem sobrecarregar** — síntese, score, tabelas, links; nunca 100 páginas para decidir 5 conteúdos.
- **Content Winner Detector (§60):** se algo performar muito acima da média, não esperar a semana — sugerir parte 2/aprofundamento/repurpose enquanto há momentum.
- **Comment→Content e Content→Business (§64/§65):** dúvidas recorrentes viram pauta; posts que geram palestra/parceria/lead/collab viram `BUSINESS SIGNAL`.
- **Banco de ideias (§66):** boa ideia não usada vai para backlog, nunca se perde.

## Guardrails (§72–79, herdados de `brand/10`)
Nunca inventar experiência/resultado/história; não forçar opinião nem polêmica falsa; não expor
confidencial/localização/terceiros; **fé nunca como growth hack** (nasce de experiência/Evangelho/
oração/Missa); família não é conteúdo por performance; Joyeat ≠ "comida fitness"; Joy Power ≠
"suplemento de academia"; Milhão sem dados confidenciais; voz natural (não IA/coach/corporate).
Toda referência: extrair **mecanismo**, nunca copiar. Aprender também com as **aprovações/rejeições**
da Vitória (§71), não só com métricas.

## As perguntas internas antes de recomendar (§84)
Aproxima da percepção que ela quer? Aumenta distribuição ou só ocupa calendário? Poderia ser de
qualquer creator ou é Vitória? Tem segunda camada? Há legitimidade? Qual o objetivo? Qual evidência
sustenta? Por que agora? Existe formato melhor? Existe execução mais simples? **Respostas fracas → descartar.**

## Pergunta-mãe do sistema (§85)
*"Diante de tudo o que sabemos sobre Vitória, do que está acontecendo no mercado, do que os
melhores creators fazem, do que a audiência responde e do que Vitória está realmente vivendo —
quais são as melhores coisas que ela pode dizer, mostrar e construir agora para fazer sua marca
pessoal crescer da maneira certa?"*
