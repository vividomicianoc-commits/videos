# IMPLEMENTATION_ROADMAP.md

Priorização por **Impacto ÷ Esforço** (#90), não pelo que é "mais legal". Cada fase:
Objetivo · Entregável · Conectores · Dependências · Ação da Vitória · Custo · Risco · Impacto.

Legenda custo: 💚 grátis 💛 baixo 🟠 médio. Risco/Impacto: Baixo/Médio/Alto.

---

## PHASE 0 — Context + Infrastructure ✅ (esta entrega)
- **Objetivo:** auditar, mapear, arquitetar, priorizar.
- **Entregável:** este conjunto de documentos + estrutura de pastas + esquema de dados + Constituição de Marca (templates).
- **Conectores:** todos auditados. **Ação da Vitória:** preencher `brand/` e o `SETUP_CHECKLIST`.
- **Custo:** 💚 · **Risco:** Baixo · **Impacto:** Alto (fundação de tudo).

## PHASE 1 — Creator & Video Intelligence
- **Objetivo:** analisar creators e vídeos por engenharia, não por thumbnail (#14).
- **Entregável:** watchlist ativa · pipeline de Video DNA · Viral Format Library (VF-xxxx) · Reference Library (REF-xxxx).
- **Conectores:** Supermetrics (YTPD), WebSearch, Descript, FFmpeg/yt-dlp locais.
- **Dependências:** Fase 0. **Ação da Vitória:** preencher `09_CREATOR_WATCHLIST`, ativar Descript.
- **Custo:** 💛 · **Risco:** Médio · **Impacto:** Alto (vantagem proprietária composta).

## PHASE 2 — Personal Analytics
- **Objetivo:** warehouse histórico + Weekly Growth Analyst que entrega **decisão**, não relatório (#43/#44).
- **Entregável:** ETL Supermetrics→warehouse · relatório semanal EU-vs-EU · autópsias de outliers · experiment engine.
- **Conectores:** Supermetrics (IGI/TIKBA já vivos), Supabase.
- **Ação da Vitória:** conectar Supabase; opcional YT/LinkedIn.
- **Custo:** 💛 · **Risco:** Baixo · **Impacto:** Alto.

## PHASE 3 — Content Planning
- **Objetivo:** do calendário/rotina → pauta → Daily Shoot List (#25–29).
- **Entregável:** Calendar-to-Content · Content Moment Engine · Daily Shoot List · Content Strategist · Fallback (Plan A/B/C).
- **Conectores:** Google Calendar (vivo), Notion.
- **Ação da Vitória:** manter o calendário atualizado.
- **Custo:** 💚 · **Risco:** Baixo · **Impacto:** Alto.

## PHASE 4 — Production
- **Objetivo:** de pauta aprovada → peça pronta (arquivo), não briefing (#31/#32).
- **Entregável:** carrosséis/estáticos on-brand (Canva/Adobe) · script-writer na sua voz · Edit Decision List · repurposing.
- **Conectores:** Canva, Adobe, Gamma, Descript.
- **Ação da Vitória:** subir Brand Kit/brandbooks.
- **Custo:** 🟠 · **Risco:** Médio · **Impacto:** Alto.

## PHASE 5 — Publishing
- **Objetivo:** reduzir trabalho operacional de publicar (#39/#40).
- **Entregável:** agendamento via Metricool/Postiz ou APIs · fluxo prepara→aprova→publica · status tracking (#34).
- **Conectores:** Metricool/Postiz ou Meta/TikTok/LinkedIn APIs.
- **Ação da Vitória:** escolher plataforma; autorizar contas.
- **Custo:** 🟠 · **Risco:** Médio · **Impacto:** Médio.

## PHASE 6 — Audience + DM
- **Objetivo:** entender audiência qualitativamente + DM por níveis de risco (#48–51).
- **Entregável:** análise de comentários → content signals · DM Level 1/2/3.
- **Conectores:** Meta Graph API.
- **Ação da Vitória:** criar Meta app + revisão.
- **Custo:** 💛 · **Risco:** Alto (compliance) · **Impacto:** Médio.

## PHASE 7 — Opportunities + Relationship
- **Objetivo:** CRM de oportunidades + networking estratégico não-spam (#52–56).
- **Entregável:** Opportunity CRM (Notion) · Brand Collaboration Radar · Relationship Intelligence.
- **Conectores:** Notion, Gmail, WebSearch.
- **Ação da Vitória:** definir critérios de fit/prestígio.
- **Custo:** 💚 · **Risco:** Baixo · **Impacto:** Médio-Alto.

## PHASE 8 — Advanced Intelligence
- **Objetivo:** Content Potential Score · portfolio balance · evergreen recycler · Joy attribution · Chief of Content pleno · dashboard (#57–64, #74).
- **Entregável:** score experimental · atribuição de ecossistema · painel único.
- **Dependências:** dados acumulados das fases anteriores.
- **Custo:** 🟠 · **Risco:** Médio · **Impacto:** Alto (é aqui que o OS "pensa sozinho").

---

## Sequência recomendada (fast path)
`Fase 0 (feito)` → **Quick Wins** → `Fase 2 (analytics, já vivo)` → `Fase 3 (planning)`
→ `Fase 1 (video intel)` → `Fase 4 (produção)` → `Fase 5` → `Fase 6/7/8`.

Racional: começar pelo que já está autenticado (analytics + calendar) gera valor na
primeira semana; Video Intelligence entra logo depois porque é a vantagem composta de longo prazo.
