# CONNECTOR GAP ANALYSIS — o que falta para o fluxo rodar de ponta a ponta
Gerado: 2026-09-01 · Responde diretamente à pergunta do doc de fluxo:
*"Quais conectores, plataformas, APIs ou integrações ainda precisamos adicionar para que o máximo
possível dessas 16 etapas seja realmente **executado, automatizado e operacionalizado** — e não apenas sugerido?"*

**Método:** cada etapa mapeada para o conector que hoje EXISTE e está conectado nesta sessão
(testado), o que ele faz de fato, e o gap real que ainda bloqueia automação total.
Legenda de status: 🟢 executável hoje · 🟡 parcial (falta peça) · 🔴 gap (sem conector).

---

## Placar geral
- **Conectados e testados hoje:** Metricool (analytics + agendamento), Supermetrics, Google (Calendar/Drive/Gmail), Notion, Canva, Adobe (Firefly/Express/creativity), Gamma, Figma, Descript, Shopify, Supabase, Linear, GitHub.
- **Grande destravamento novo:** **Metricool agenda e publica** (`createScheduledPost`, `createScheduledPostForReview`) → a etapa de PUBLICAÇÃO deixou de ser gap. É o conector de saída que faltava.
- **3 gaps reais que ainda travam automação total:** (1) **Community/DM & comentários** (responder), (2) **Trend intelligence nativa** (TikTok/IG trends API), (3) **Creator/competitor scraping** de perfis específicos.

---

## As 16 etapas → status e o que falta

| # | Etapa | Conector que executa hoje | Status | O que falta (o gap real) |
|---|---|---|---|---|
| 1 | **Performance (meu perfil/posts)** | **Metricool** (analytics+best-time), Supermetrics | 🟢 | Nada. Dado próprio, vivo, por rede. Já em uso (`data/metricool_2026-08-31.json`). |
| 2 | **Market Intelligence** | WebSearch/WebFetch + fontes de `intelligence/` | 🟡 | Dado macro vem de web (secundário). Falta feed estruturado — **News/Perplexity API** ou RSS curado p/ virar sinal automático em `content_signals`. |
| 3 | **Creator Intelligence** | Metricool (connector *competitors*), Supermetrics | 🟡 | Competidores dá números agregados. Para **puxar conteúdo de @s específicas** (o que postaram, hooks) falta **scraper social (Apify/Phyllo/ IG Graph business discovery)**. |
| 4 | **Format Replication (video DNA)** | Manual + Descript (transcrição) | 🟡 | Sem API de biblioteca de formatos. Descript transcreve referências; a "replicação" ainda é humana+Claude. Aceitável — não é bloqueio. |
| 5 | **Trend Intelligence** | WebSearch | 🔴 | **Gap.** Sem **TikTok Creative Center API / IG trends / Google Trends** conectados. Hoje tendência é lida por busca manual. Maior gap de *input*. |
| 6 | **Audience Intelligence (demografia)** | Metricool (country/gender), Supermetrics (IG audience) | 🟡 | Tem país/gênero. Falta **faixa etária detalhada + horário do MEU público** (o best-time já resolve horário). Suficiente p/ operar. |
| 7 | **Agenda / contexto da semana** | **Google Calendar** (list/search events) | 🟢 | Nada. Já conectado. |
| 8 | **Weekly Editorial (plano)** | Claude + repo (`modules/weekly_content_engine.md`) | 🟢 | Nada. É o cérebro — roda sobre 1-7. |
| 9 | **Creative Direction** | Claude + `brand/` (voz, guardrails, signature) | 🟢 | Nada. |
| 10 | **Content Creation — imagem/design** | **Canva, Adobe Firefly/Express, Gamma, Figma** | 🟢 | Nada. 4 caminhos p/ carrossel/foto/arte. |
| 11 | **Content Creation — vídeo** | **Descript** (import, editar por texto, legendas, publicar) | 🟢 | Nada — precisa só ativar projeto/drive. Corte, captions, remoção de filler = automatizável. |
| 12 | **Production / assets** | Google Drive + Notion + GitHub (este repo) | 🟢 | Nada. Durabilidade garantida. |
| 13 | **Calendar Ops (planejar posts)** | **Metricool planner** + Google Calendar | 🟢 | Nada. `getScheduledPosts` + `createScheduledPost`. |
| 14 | **Publishing** | **Metricool** `createScheduledPostForReview` → Vitória aprova → publica | 🟢 | **Destravado.** Antes era gap; agora é o conector de saída. Respeita "Claude prepara → Vitória aprova → sistema publica". |
| 15 | **Community Management (responder DM/comentário)** | — | 🔴 | **Gap.** Metricool tem inbox no app, mas o MCP **não expõe** responder DM/comentário. Falta **Meta Graph API (IG/FB) + TikTok API** ou o módulo de inbox do Metricool via API. |
| 16 | **Results / atribuição** | Metricool + Supermetrics (+ Shopify p/ venda futura) | 🟢 | Nada p/ social. Atribuição a receita só quando loja Joy Eat ligar (Shopify já conectado). |

---

## Os 3 conectores/APIs a adicionar (prioridade — o que realmente falta)

### 🥇 1. Community/Inbox — responder comentários e DMs (etapa 15)
- **Por quê:** followability e comentários são o gargalo real (dado: 0,079 comentário/like). Responder rápido = mais alcance + relação. Hoje é 100% manual.
- **O que adicionar:** **Meta Graph API** (Instagram Messaging + Comments) e **TikTok Business API**, OU habilitar o módulo de **Inbox do Metricool** se houver endpoint MCP. Alternativa gerenciada: **ManyChat / Chatwoot**.
- **Guardrail:** resposta é APPROVAL REQUIRED (nunca auto-responder sem revisão) — Claude rascunha, Vitória aprova.

### 🥈 2. Trend Intelligence nativa (etapa 5)
- **Por quê:** é o maior gap de *entrada*. Hoje tendência vem de busca web (secundária), não de sinal de plataforma.
- **O que adicionar:** **TikTok Creative Center API** (sons/hashtags em alta), **Google Trends (pytrends/SerpAPI)**, opcional **Perplexity/News API** p/ mercado. Grava em `content_signals`.

### 🥉 3. Creator/Competitor content scraping (etapa 3)
- **Por quê:** analisar influencers de verdade (o que ela pediu no dia 1) exige puxar o conteúdo real das @s, não só métricas agregadas.
- **O que adicionar:** **IG Graph API business discovery** (perfis públicos) ou **Apify/Phyllo** p/ TikTok. Depende de Vitória enviar a **lista de 10-20 @s** (pendência aberta).

---

## Conclusão operacional (e daí?)
**O fluxo já roda de ponta a ponta em ~13 das 16 etapas hoje** — do dado real (Metricool) ao plano,
à criação (Canva/Adobe/Descript), ao agendamento e à publicação com aprovação (Metricool). O que
**não** está automatizado e precisa de conector novo: **responder comunidade (15)**, **trends nativas
(5)** e **scraping de creators (3)**. Nenhum desses bloqueia começar — bloqueiam só a parte de
*escuta/relação em tempo real*. **DO NEXT:** (a) ligar Meta Graph API p/ community; (b) TikTok Creative
Center p/ trends; (c) Vitória enviar lista de @s p/ destravar creator intel.
