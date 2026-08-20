# CLAUDE.md — Manual operacional do VITÓRIA OS

**Se você é uma sessão agendada (Cowork/Routine) ou nova: leia este arquivo primeiro.**
Este repositório É o VITÓRIA OS — o cérebro da marca pessoal de Vitória Domiciano. Qualquer
agente que rode qualquer rotina **usa esta base**; nunca opere no escuro.

> Repositório: `vividomicianoc-commits/videos` · branch de trabalho: `claude/vitoria-os-personal-brand-w13mai`.
> Toda conta/rotina do Cowork deve ter este repo como fonte e começar lendo este arquivo.

## Primeira ação de QUALQUER sessão
1. Ler `README.md` (índice) + a **Constituição de Marca** em `brand/` (01–15).
2. Aplicar as **regras permanentes** abaixo em tudo que produzir.
3. Ao terminar, **commitar o resultado no git** (o container é efêmero — só sobrevive o que for commitado).

## Regras permanentes (valem para todo agente, toda rotina)
- **Voz:** escrever como Vitória (`brand/03_VITORIA_VOICE.md` + `voice/approved/`). **Nunca soar como IA.** Rodar os 5 testes de voz antes de entregar texto.
- **Guardrails:** passar tudo pelo `brand/10_BRAND_GUARDRAILS.md` — Brand Guardian Check, Risk Score, e a **Human Approval Matrix**: AUTO (organizar/analisar/draft) · APPROVAL REQUIRED (roteiro/legenda/agendamento/parceria) · HUMAN ONLY (crise/pessoal sensível/negociação/fé sensível). **Claude prepara → Vitória aprova → sistema publica. Nunca publicar sozinho.**
- **Posicionamento:** toda recomendação passa por *"isso fortalece o posicionamento de Vitória?"* (`brand/01`, `brand/02`). Território-mãe: **founder building in public + fé + inteligência de mercado**.
- **Verdade & fontes:** nunca inventar fato/experiência/claim. Dado externo → fonte primária + **provenance** (fonte, data, url, confiança). Marcar FACT/INFERENCE/HYPOTHESIS e HIGH/MEDIUM/LOW. Sensores sociais = descobrir, não confirmar.
- **Saúde/Joy Power:** claim só se estiver em `product_claims` como APPROVED; senão REGULATORY REVIEW (`brand/05`).
- **Decisão, não relatório:** toda análise termina em ação (`DO MORE/LESS/STOP/TEST/WATCH`) — responder *"e daí?"*.
- **Commitar sempre:** resultados vão para arquivos no repo (ver "onde cada coisa é gravada").

## Mapa do sistema (onde tudo vive)
| Preciso de… | Está em |
|---|---|
| Quem é a Vitória / história / privacidade | `brand/15_PERSONAL_CONTEXT.md` + `voice/approved/` |
| Posicionamento / objetivos / metas | `brand/01`, `brand/02`, `brand/11_GOALS.md` |
| Voz / como escrever | `brand/03_VITORIA_VOICE.md` |
| Marcas (Joyeat/Joy Power/Joy Group) | `brand/04`, `brand/05`, `brand/06` |
| Pilares editoriais / o que priorizar | `brand/08_CONTENT_PILLARS.md` |
| Guardrails / música / risco | `brand/10_BRAND_GUARDRAILS.md` |
| Signature / reconhecimento | `brand/14_SIGNATURE_SYSTEM.md` |
| Creator Intelligence / watchlist / deep dive | `brand/09` + `intelligence/creators/` |
| Formatos de vídeo virais | `intelligence/viral-formats/VIDEO_FORMAT_LIBRARY.md` |
| Video DNA (referências) | `intelligence/video-dna/` |
| Autópsias de conteúdo | `intelligence/autopsies/` |
| Playbook proprietário de crescimento | `brand/12_CONTENT_PLAYBOOK.md` |
| Orquestração sinal→conteúdo / Chief of Content | `modules/intelligence_to_content_engine.md`, `modules/chief_of_content.md` |
| Rotinas agendadas (specs) | `modules/routines/` |
| Dados / performance / creators / sinais | `data/warehouse/schema.sql` (15 tabelas) + `data/baseline_*.json` |

## O que Vitória quer automatizar → onde isso vive (o mapeamento que ela pediu)
- **Analisar influencers** → `brand/09_CREATOR_WATCHLIST.md` (watchlist, performance multiplier, Creator Deep Dive) + template `intelligence/creators/_TEMPLATE_CREATOR_PLAYBOOK.md`.
- **Posicionamento / estratégias de posicionamento** → `brand/01`, `brand/02`, `brand/08`; Positioning Reference Map em `09`.
- **Formatos de vídeo viral** → `intelligence/viral-formats/VIDEO_FORMAT_LIBRARY.md` (14 formatos-base + composição + transferability).
- **Análise de mercado** → `modules/routines/radar_estrategico_diario.md` + `weekly_intelligence_review.md` → grava sinais em `content_signals`.
- **Análise do meu perfil na semana + resultado dos posts** → **Weekly Growth Analyst** (ver abaixo): puxa IG/TikTok (Supermetrics), compara EU-vs-EU (`brand/11`), autópsia de outliers (`intelligence/autopsies/`).
- **Conteúdo ligado a tudo isso** → Chief of Content (`modules/chief_of_content.md`) + Content Playbook (`12`) + Voz (`03`).

## As rotinas e como cada uma se conecta (o que ler / o que gravar)
Cada rotina agendada no Cowork deve: **(1)** ler este `CLAUDE.md` + os arquivos da sua coluna "lê";
**(2)** produzir a saída; **(3)** commitar no caminho da coluna "grava"; **(4)** notificar Vitória.

| Rotina | Spec | Lê | Grava |
|---|---|---|---|
| Opportunity Watch | `modules/routines/opportunity_watch.md` | 01,02,04,05,08,10 | `data/signals/` (+ tabela `content_signals`) |
| Radar Estratégico (diário) | `modules/routines/radar_estrategico_diario.md` | 01,02,04,05,08 | `intelligence/radar/AAAA-MM-DD.md` |
| Weekly Intelligence Review | `modules/routines/weekly_intelligence_review.md` | radar da semana + 08,11 | `intelligence/weekly-review/AAAA-Www.md` |
| Planejamento Editorial (dom) | `modules/routines/planejamento_editorial_semanal.md` | 01,02,03,08,11,12,15 + agenda | `content/plan/AAAA-Www.md` (após aprovação) |
| **Weekly Growth Analyst** ⭐ | ver abaixo | 11 + Supermetrics + autópsias | `intelligence/weekly-growth/AAAA-Www.md` + baseline |

### Weekly Growth Analyst (novo — o de maior valor agora)
Toda segunda: puxar IG (`IGI`, conta `17841401193640476`) e TikTok (`TIKBA`) via Supermetrics
(30d + semana), comparar com `data/baseline_2026-08-19.json` e semanas anteriores, rodar autópsia
de qualquer outlier (padrão em `intelligence/autopsies/2026-08-02_*.md`), e entregar
`DO MORE / DO LESS / STOP / TEST / WATCH`. Gravar em `intelligence/weekly-growth/` e atualizar metas.
**Métrica-guarda:** followability (follows/1k views) — hoje o gargalo (~0,51 no IG).

## Estado atual (2026-08-19)
- Constituição 01–15 completa. Warehouse 15 tabelas. Baseline real capturado (IG 2.684 / TikTok 1.096).
- Pilares que convertem público certo: **Founder + Fé** (ver `intelligence/autopsies/`). Evitar alcance emprestado off-brand.
- Pendências de Vitória: metas FLOOR/TARGET/STRETCH; lista de @s; conectar YouTube/LinkedIn/Descript; hex das cores Joyeat.

## Ferramentas conectadas (usar quando a rotina pedir)
Supermetrics (IG+TikTok vivos), Google Calendar/Drive/Gmail, Notion, Canva, Adobe, Gamma, Figma,
Supabase, Shopify (loja Joy Eat — só p/ atribuição futura), Descript (vídeo/transcrição), GitHub.
