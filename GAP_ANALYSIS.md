# GAP_ANALYSIS.md

Para cada função desejada, quatro colunas: **TEMOS** (funciona agora) ·
**CONECTAR** (um login/ativação) · **CONTRATAR** (serviço/chave paga) ·
**DESENVOLVER** (código próprio). Regra do brief: construir é a ÚLTIMA opção (#72, #76).

---

## ✅ TEMOS — funciona hoje, zero setup adicional
- Analytics de Instagram e TikTok próprios (Supermetrics)
- Dados públicos de creators no YouTube (Supermetrics YTPD)
- Calendar-to-Content (Google Calendar)
- Memória e CRM (Notion + Markdown no git)
- Produção de imagem/carrossel/deck (Canva, Adobe, Gamma, Figma)
- Roteiro na sua voz (Claude + `03_VITORIA_VOICE`)
- Market & cultural intelligence (WebSearch/WebFetch)
- Warehouse local para bootstrap (SQLite via Python)
- Análise visual de frames de vídeo (visão do Claude)

## 🔌 CONECTAR — só depende de um login/ativação seu
- **Descript** (edição de vídeo + transcrição) → ativar o conector neste chat
- **YouTube analytics** próprio → conectar conta no Supermetrics
- **LinkedIn Pages** → conectar no Supermetrics
- **Supabase** → escolher/criar projeto (warehouse em produção)
- **Google Drive brandbooks** → subir cores/fontes/logos/templates
- **Canva Brand Kit** → conectar para produção on-brand automática

## 💳 CONTRATAR — serviço externo ou chave paga
- **Publicação/agendamento social** → Metricool (~€18–45/mês) *ou* Postiz (self-host grátis)
- **Meta Graph API** (comentários, DMs, publicação IG) → app grátis, mas exige revisão
- **TikTok Content Posting API** → app grátis, exige aprovação
- **Whisper API** (se não usar Descript) → ~US$0,006/min

## 🛠️ DESENVOLVER — código próprio (proprietário, vale a pena possuir)
- **Video Intelligence pipeline** (yt-dlp → FFmpeg → transcrição → frames → Video DNA)
- **Creator Intelligence Radar** (watchlist + coleta + performance multiplier)
- **Viral Format Library** (extração de engenharia, IDs VF-xxxx)
- **Trend Scanner** (emerging→saturated + score de fit)
- **Content Strategist / Chief of Content** (orquestração dos módulos)
- **Warehouse schema + ETL** (das APIs para Supabase)
- **Joy ecosystem attribution** (UTMs + Shopify + warehouse)
- **Content signals** (análise de comentários/DMs → pauta)

---

## Onde há trade-off real (rota original → alternativa)

| Função | Rota ideal | Limitação | Alternativa | O que se perde |
|---|---|---|---|---|
| Análise profunda de IG de creators | API oficial | Meta não expõe dados de terceiros | Dados públicos + análise do vídeo em si | métricas exatas; ganhamos a *engenharia* |
| DM automation total | Meta Messaging | Revisão rígida + risco de conta | Draft-for-approval (níveis do #51) | automação plena; mantém segurança |
| Download de qualquer vídeo | yt-dlp | ToS de cada plataforma | Só uso autorizado/referência própria | escala; mantém conformidade |
| Publicação 1-clique | API oficial | Setup e revisão | Metricool/Postiz como ponte | integração nativa; ganha rapidez |

Nenhuma função fica sem caminho. Todas chegam a ≥85% do objetivo.
