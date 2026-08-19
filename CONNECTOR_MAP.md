# CONNECTOR_MAP.md

Mapa capacidade → solução. Status usa a taxonomia do brief (#8): `READY`,
`REQUIRES LOGIN`, `REQUIRES API KEY`, `REQUIRES MCP`, `REQUIRES EXTERNAL SERVICE`,
`REQUIRES CUSTOM DEV`, `REQUIRES MANUAL INPUT`.

Custo: 💚 incluso/grátis · 💛 baixo · 🟠 médio · 🔴 alto. Dificuldade: ★ fácil → ★★★ difícil.

---

## A. Inteligência & Analytics

| Capacidade | Solução ideal | Conector/MCP/API | Custo | Dif. | Status | Ação da Vitória |
|---|---|---|---|---|---|---|
| Analisar meu Instagram | Supermetrics `IGI` | Supermetrics MCP | 💚 | ★ | **READY** | nada — já autenticado |
| Analisar meu TikTok | Supermetrics `TIKBA` | Supermetrics MCP | 💚 | ★ | **READY** | nada — já autenticado |
| Analisar meu YouTube | Supermetrics `YT2` | Supermetrics MCP | 💚 | ★ | REQUIRES LOGIN | conectar conta YT |
| Analisar meu LinkedIn | Supermetrics `LIP` | Supermetrics MCP | 💚 | ★ | REQUIRES LOGIN | conectar página LI |
| Analisar creators externos (YT) | Supermetrics `YTPD` | MCP (dados públicos) | 💚 | ★ | **READY** | nada |
| Analisar creators externos (IG) | `IGPD2` + scraping ético | MCP + custom | 💛 | ★★ | REQUIRES MANUAL/DEV | — |
| Social listening / audiência | Notion (comentários) + análise Claude | MCP + custom | 💛 | ★★ | REQUIRES CUSTOM DEV | — |
| Trend detection (creators) | WebSearch + watchlist + custom | built-in + scripts | 💛 | ★★ | REQUIRES CUSTOM DEV | — |
| Market/cultural intelligence | WebSearch + WebFetch | built-in | 💚 | ★ | **READY** | nada |

## B. Video Intelligence

| Capacidade | Solução ideal | Conector/MCP/API | Custo | Dif. | Status | Ação da Vitória |
|---|---|---|---|---|---|---|
| Obter mídia de referência | yt-dlp (uso autorizado) | script local | 💚 | ★★ | REQUIRES CUSTOM DEV | — |
| Extrair áudio/metadata | FFmpeg/ffprobe | script local | 💚 | ★★ | REQUIRES CUSTOM DEV | — |
| Transcrição | Descript OU Whisper API | Descript MCP / API | 💛 | ★ | REQUIRES MCP/KEY | ativar Descript no chat |
| Scene/frame extraction | FFmpeg | script local | 💚 | ★★ | REQUIRES CUSTOM DEV | — |
| Análise visual dos frames | Visão do Claude | built-in | 💚 | ★ | **READY** | nada |
| Video DNA (relatório) | Orquestração Claude | built-in + memória | 💚 | ★★ | REQUIRES CUSTOM DEV | — |

## C. Produção de Conteúdo

| Capacidade | Solução ideal | Conector/MCP/API | Custo | Dif. | Status | Ação da Vitória |
|---|---|---|---|---|---|---|
| Carrossel | Canva (autofill/brand template) | Canva MCP | 🟠 | ★ | **READY** | conectar Brand Kit |
| Post estático / thumbnail | Canva OU Adobe Firefly | Canva/Adobe MCP | 🟠 | ★ | **READY** | — |
| Geração/edição de imagem | Adobe Firefly | Adobe MCP | 🟠 | ★ | **READY** | — |
| Apresentação / mini-site | Gamma | Gamma MCP | 🟠 | ★ | **READY** | — |
| Design system / diagramas | Figma | Figma MCP | 🟠 | ★★ | **READY** | — |
| **Edição de vídeo por prompt** | Descript | Descript MCP | 🟠 | ★★ | REQUIRES MCP | ativar Descript no chat |
| Edição de vídeo (fallback) | FFmpeg + EDL | script local | 💚 | ★★★ | REQUIRES CUSTOM DEV | — |
| Roteiro (script) | Claude + Vitória Voice | built-in | 💚 | ★ | **READY** | alimentar `03_VITORIA_VOICE` |

## D. Publicação

| Capacidade | Solução ideal | Conector/MCP/API | Custo | Dif. | Status | Ação da Vitória |
|---|---|---|---|---|---|---|
| Agendar/publicar (multi-rede) | Metricool ou Postiz | API/self-host | 🟠 | ★★ | REQUIRES EXTERNAL SERVICE | escolher plataforma |
| Publicar IG (direto) | Meta Graph API | API oficial | 💛 | ★★★ | REQUIRES API KEY | criar Meta app |
| Publicar TikTok | TikTok Content Posting API | API oficial | 💛 | ★★★ | REQUIRES API KEY | aprovar app |
| Publicar LinkedIn | LinkedIn API | API oficial | 💛 | ★★ | REQUIRES API KEY | criar app |
| Aprovação humana | Notion board + Claude | Notion MCP | 💚 | ★ | **READY** | — |

## E. Dados, Calendário, Arquivos, CRM

| Capacidade | Solução ideal | Conector/MCP/API | Custo | Dif. | Status | Ação da Vitória |
|---|---|---|---|---|---|---|
| Data warehouse | Supabase (Postgres) | Supabase MCP | 💛 | ★★ | REQUIRES LOGIN | escolher/criar projeto |
| Warehouse local (bootstrap) | SQLite | Python | 💚 | ★ | **READY** | nada |
| Memória editorial | Markdown (git) + Notion | git + Notion MCP | 💚 | ★ | **READY** | — |
| Calendar-to-Content | Google Calendar | Calendar MCP | 💚 | ★ | **READY** | nada |
| Armazenar mídia/brandbooks | Google Drive | Drive MCP | 💚 | ★ | **READY** | subir brandbooks |
| Opportunity CRM | Notion | Notion MCP | 💚 | ★ | **READY** | — |
| Relationship intelligence | Notion + WebSearch | MCP + built-in | 💚 | ★★ | REQUIRES CUSTOM DEV | — |
| Atribuição Joy ecosystem | UTMs + Shopify + Supabase | Shopify MCP + custom | 💛 | ★★ | **READY (parcial)** — loja `JOY EAT FAST CASUAL LTDA` confirmada (xssy2x-ts.myshopify.com, BRL) | conectar UTMs/cupons ao conteúdo |

## F. Audiência & DM

| Capacidade | Solução ideal | Conector/MCP/API | Custo | Dif. | Status | Ação da Vitória |
|---|---|---|---|---|---|---|
| Analisar comentários | Meta Graph API + Claude | API + built-in | 💛 | ★★ | REQUIRES API KEY | Meta app |
| DM Instagram (leitura/draft) | Meta Messaging API | API oficial | 💛 | ★★★ | REQUIRES API KEY + revisão | Meta app + review |
| Content signals | Notion + análise Claude | MCP + custom | 💚 | ★★ | REQUIRES CUSTOM DEV | — |

---

## Cobertura dos 25 itens do Connector Discovery (#85)

1. IG analytics próprio — **READY** (Supermetrics IGI)
2. TikTok analytics próprio — **READY** (Supermetrics TIKBA)
3. YouTube analytics — REQUIRES LOGIN (Supermetrics YT2)
4. LinkedIn analytics — REQUIRES LOGIN (Supermetrics LIP)
5. Análise de creators externos — **READY** parcial (YTPD público) / DEV p/ IG
6. Descoberta de vídeos — REQUIRES CUSTOM DEV (WebSearch + APIs públicas)
7. Obtenção autorizada de mídia — REQUIRES CUSTOM DEV (yt-dlp)
8. Análise audiovisual — REQUIRES CUSTOM DEV (FFmpeg + visão Claude)
9. Transcrição — REQUIRES MCP (Descript) / KEY (Whisper)
10. Edição de vídeo — REQUIRES MCP (Descript) / DEV (FFmpeg)
11. Carrossel — **READY** (Canva)
12. Posts estáticos — **READY** (Canva/Adobe)
13. Publicação IG — REQUIRES API KEY (Meta) / EXTERNAL (Metricool)
14. Publicação TikTok — REQUIRES API KEY / EXTERNAL
15. Publicação LinkedIn — REQUIRES API KEY / EXTERNAL
16. Publicação YouTube — REQUIRES API KEY / EXTERNAL
17. Comentários — REQUIRES API KEY (Meta)
18. DMs — REQUIRES API KEY + revisão (Meta)
19. Google Calendar — **READY**
20. Google Drive — **READY**
21. CRM — **READY** (Notion)
22. Social listening — REQUIRES CUSTOM DEV / EXTERNAL
23. Trend detection — REQUIRES CUSTOM DEV
24. Creator discovery — REQUIRES CUSTOM DEV
25. Brand collaboration discovery — REQUIRES CUSTOM DEV (WebSearch + Gmail)

**Leitura rápida:** 8 capacidades **READY hoje**, 2 a um login de distância, o resto
é desenvolvimento incremental orientado por prioridade (ver ROADMAP).
