-- VITÓRIA OS — Performance Data Warehouse
-- Bootstrap em SQLite; portável para Supabase/Postgres (tipos compatíveis).
-- Cobre o modelo de dados do brief #42, #67 (RAW/STRUCTURED), #68 (provenance).

-- ── Conteúdos publicados + métricas (o coração do #42/#44) ────────────────
CREATE TABLE IF NOT EXISTS content (
    id                 INTEGER PRIMARY KEY AUTOINCREMENT,
    platform           TEXT NOT NULL,          -- instagram | tiktok | youtube | linkedin
    published_at       TEXT,                   -- ISO 8601
    title              TEXT,
    pillar             TEXT,                   -- FOUNDER, BUSINESS, JOYEAT... (ver 08_CONTENT_PILLARS)
    topic              TEXT,
    format             TEXT,                   -- reel, carousel, static, story, short
    vf_id              TEXT,                   -- Viral Format usado (VF-xxxx)
    ref_id             TEXT,                   -- Reference Video usada (REF-xxxx)
    hook_type          TEXT,                   -- curiosity, contrarian, story...
    duration_s         INTEGER,
    -- métricas
    views              INTEGER,
    reach              INTEGER,
    likes              INTEGER,
    comments           INTEGER,
    shares             INTEGER,
    saves              INTEGER,
    watch_time_s       REAL,
    avg_watch_time_s   REAL,
    retention_pct      REAL,
    completion_pct     REAL,
    profile_visits     INTEGER,
    followers_gained   INTEGER,
    follows_per_1k     REAL,                   -- KPI de followability (#44)
    link_clicks        INTEGER,
    cta                TEXT,
    source_of_traffic  TEXT,
    -- meta
    status             TEXT DEFAULT 'PUBLISHED', -- IDEA→APPROVED→...→ANALYZED→REPURPOSED (#34)
    primary_goal       TEXT,                   -- GROWTH|AUTHORITY|CONNECTION|DESIRE|COMMUNITY|CONVERSION|NETWORKING|MONETIZATION (11 #61)
    secondary_goal     TEXT,
    success_definition TEXT,                   -- definido ANTES de publicar (11 #62)
    vitoria_touch_time_min REAL,               -- carga mental / eficiência (11 #39)
    signal_id          INTEGER REFERENCES content_signals(id), -- origem (Intelligence→Content ROI)
    created_at         TEXT DEFAULT (datetime('now'))
);

-- ── Authority Signal Database (11_GOALS #21) — evolução além do algoritmo ──
CREATE TABLE IF NOT EXISTS authority_signals (
    id           INTEGER PRIMARY KEY AUTOINCREMENT,
    code         TEXT,                          -- AUTH-001...
    kind         TEXT,                          -- podcast_invite | founder_reached_out | brand_asked_opinion | event_invite | press | speaking | opportunity
    description  TEXT,
    counterpart  TEXT,
    date         TEXT DEFAULT (datetime('now')),
    source_url   TEXT
);

-- ── Snapshots de métricas (séries temporais; performance evolui pós-publicação)
CREATE TABLE IF NOT EXISTS metric_snapshots (
    id            INTEGER PRIMARY KEY AUTOINCREMENT,
    content_id    INTEGER REFERENCES content(id),
    captured_at   TEXT NOT NULL,
    views         INTEGER, reach INTEGER, likes INTEGER, comments INTEGER,
    shares INTEGER, saves INTEGER, followers_gained INTEGER
);

-- ── Creators monitorados (09_CREATOR_WATCHLIST) ──────────────────────────
CREATE TABLE IF NOT EXISTS creators (
    id                INTEGER PRIMARY KEY AUTOINCREMENT,
    handle            TEXT NOT NULL,
    platform          TEXT NOT NULL,
    country           TEXT,                     -- BR | INTL (US, EU, AU...)
    category          TEXT,                     -- A Founders | B Business | C Lifestyle | D Wellness | E Faith | F Storytelling | G UGC | H International | I Breakout
    follower_range    TEXT,
    primary_territory TEXT,
    why_monitor       TEXT,
    what_to_learn     TEXT,                     -- sempre específico (não "inspiração")
    priority          TEXT DEFAULT 'P3',        -- P1 CORE | P2 IMPORTANT | P3 EXPLORATORY | P4 ARCHIVE
    reference_type    TEXT,                     -- POSITIONING|FOUNDER|BUSINESS_AUTHORITY|FEMALE_FOUNDER|LIFESTYLE|STORYTELLING|GROWTH|FORMAT|VISUAL|NETWORKING|COMMERCIAL|SPECIALIST
    relationship_potential TEXT,                -- REFERENCE_ONLY|LEARN|FOLLOW|ENGAGE|RELATIONSHIP_TARGET|COLLAB_POTENTIAL|BUSINESS_POTENTIAL
    fit_scores        TEXT,                     -- JSON: {positioning,founder,female_brand,business,lifestyle,format,commercial} 0-10
    is_breakout       INTEGER DEFAULT 0,
    avg_views         INTEGER,                  -- baseline p/ performance multiplier
    breakout_score    REAL,
    status            TEXT DEFAULT 'active',     -- active | archived
    notes             TEXT,
    added_at          TEXT DEFAULT (datetime('now'))
);

-- ── Creator Content Database (#52) — funil metadata → outlier → Video DNA ─
CREATE TABLE IF NOT EXISTS creator_content (
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    creator_id             INTEGER REFERENCES creators(id),
    platform               TEXT, url TEXT, published_at TEXT,
    topic                  TEXT,
    views INTEGER, likes INTEGER, comments INTEGER, shares INTEGER, saves INTEGER,
    duration_s             INTEGER,
    format_id              TEXT,                 -- VF-xxxx quando aplicável
    hook_type              TEXT,
    performance_multiplier REAL,                 -- views ÷ média recente do creator
    outlier_class          TEXT,                 -- NORMAL | STRONG | OUTLIER | MAJOR_OUTLIER
    vitoria_fit            INTEGER,
    video_dna_status       TEXT DEFAULT 'none',  -- none | queued | done (→ video_dna.ref_id)
    video_access_status    TEXT,                 -- VIDEO_AVAILABLE|VIDEO_PARTIAL|TRANSCRIPT_ONLY|METADATA_ONLY|UNAVAILABLE
    notes                  TEXT,
    collected_at           TEXT DEFAULT (datetime('now'))
);
CREATE INDEX IF NOT EXISTS idx_creators_priority ON creators(priority, status);
CREATE INDEX IF NOT EXISTS idx_ccontent_creator ON creator_content(creator_id, performance_multiplier);

-- ── Video DNA (STRUCTURED, #17) ──────────────────────────────────────────
CREATE TABLE IF NOT EXISTS video_dna (
    id                    INTEGER PRIMARY KEY AUTOINCREMENT,
    ref_id                TEXT UNIQUE,          -- REF-xxxx
    creator_id            INTEGER REFERENCES creators(id),
    platform              TEXT, url TEXT, published_at TEXT, duration_s INTEGER,
    views                 INTEGER,
    performance_multiplier REAL,               -- views / média do creator (#13)
    hook_verbal           TEXT, hook_verbal_type TEXT,
    hook_visual           TEXT,
    narrative_structure   TEXT,
    timeline_json         TEXT,                 -- JSON com marcações de tempo
    editing_dna_json      TEXT,
    delivery_dna          TEXT,
    retention_devices     TEXT,
    share_mechanism       TEXT, comment_mechanism TEXT, follow_mechanism TEXT,
    vitoria_fit           INTEGER,              -- 1-10
    analyzed_at           TEXT DEFAULT (datetime('now'))
);

-- ── Viral Format Library (#18) ───────────────────────────────────────────
CREATE TABLE IF NOT EXISTS viral_formats (
    id             INTEGER PRIMARY KEY AUTOINCREMENT,
    vf_id          TEXT UNIQUE,                 -- VF-xxxx
    name           TEXT NOT NULL,
    structure      TEXT, hook_type TEXT, timeline_json TEXT,
    duration_s     INTEGER, editing TEXT, delivery TEXT, retention TEXT,
    context        TEXT, creators_using TEXT, avg_performance REAL,
    vitoria_fit    INTEGER, stage TEXT,          -- emerging|growing|mainstream|saturated|declining
    created_at     TEXT DEFAULT (datetime('now'))
);

-- ── Experimentos (#46) ───────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS experiments (
    id           INTEGER PRIMARY KEY AUTOINCREMENT,
    hypothesis   TEXT NOT NULL,
    metric       TEXT NOT NULL,
    sample_size  INTEGER,
    result       TEXT,                          -- CONFIRMED|REJECTED|INCONCLUSIVE
    learning     TEXT,
    started_at   TEXT, closed_at TEXT
);

-- ── Oportunidades / CRM (#52) ────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS opportunities (
    id            INTEGER PRIMARY KEY AUTOINCREMENT,
    type          TEXT,                          -- brand_deal, ugc, collab, event, podcast...
    counterpart   TEXT,
    fit_score     INTEGER, prestige INTEGER, revenue_potential INTEGER,
    audience_fit  INTEGER, authority_value INTEGER, relationship_value INTEGER,
    risk          INTEGER, status TEXT, next_action TEXT,
    received_at   TEXT DEFAULT (datetime('now'))
);

-- ── Content Signal Database (Intelligence→Content Engine #26) ─────────────
-- Sinal ≠ pauta. Todo sinal passa pelo filtro e recebe classificação/roteamento.
CREATE TABLE IF NOT EXISTS content_signals (
    id                     INTEGER PRIMARY KEY AUTOINCREMENT,
    source                 TEXT,                 -- opportunity_watch | radar | weekly_review | creator_intel | audience_intel | calendar
    detected_at            TEXT DEFAULT (datetime('now')),
    category               TEXT,                 -- marketing, wellness, food, luxury, creator, trend...
    description            TEXT,
    second_layer           TEXT,                 -- a leitura não-óbvia (#9)
    positioning_connection TEXT,                 -- qual pilar fortalece (#10)
    pillar                 TEXT,
    content_potential      TEXT,                 -- IGNORE|WATCH|SAVE|WEEKLY|PRIORITY|SAME_DAY (#6)
    business_potential     TEXT,                 -- routing: CONTENT|BUSINESS|BOTH|NONE (#25)
    fit_scores             TEXT,                 -- JSON: recency,vitoria,positioning,audience,authority,growth,content,timing 0-10 (#5)
    urgency                TEXT,                 -- NOW | 24H | THIS_WEEK | EVERGREEN (#15)
    expiration             TEXT,                 -- opportunity_expiration (#16)
    status                 TEXT DEFAULT 'new',   -- new | approved | scripted | published | expired | dropped
    action                 TEXT,
    source_url             TEXT,                 -- para conteúdo factual (#27)
    confidence             TEXT
);
CREATE INDEX IF NOT EXISTS idx_signals_status ON content_signals(status, content_potential, urgency);

-- ── Provenance (#68): origem de todo dado externo ────────────────────────
CREATE TABLE IF NOT EXISTS provenance (
    id            INTEGER PRIMARY KEY AUTOINCREMENT,
    entity_table  TEXT NOT NULL, entity_id INTEGER NOT NULL,
    source        TEXT, url TEXT, method TEXT,
    confidence    TEXT,                          -- HIGH|MEDIUM|LOW
    kind          TEXT,                          -- FACT|INFERENCE|HYPOTHESIS
    collected_at  TEXT DEFAULT (datetime('now'))
);

-- ── Product Intelligence (Joy Power / Joyeat, #50/#51 do doc Joy Power) ───
-- Conteúdo de produto DEVE respeitar o status real. Nunca comunicar acima do status.
CREATE TABLE IF NOT EXISTS products (
    id                   INTEGER PRIMARY KEY AUTOINCREMENT,
    product_code         TEXT UNIQUE,          -- ex.: JP-DAY-001
    brand                TEXT DEFAULT 'joypower', -- joypower | joyeat
    line                 TEXT,                 -- DAY | MUSCLE | NIGHT (Joy Power)
    name                 TEXT NOT NULL,
    formula              TEXT,
    flavor               TEXT,
    status               TEXT DEFAULT 'IDEA',  -- IDEA|RESEARCH|FORMULATION|PROTOTYPE|TESTING|REGULATORY|PRODUCTION|READY|LAUNCHED|DISCONTINUED
    target               TEXT,
    price                TEXT,
    packaging            TEXT,                 -- stick | canister | pouch | refil
    launch_date          TEXT,
    content_status       TEXT,                 -- IDEA→...→PUBLISHED (status editorial)
    info_classification  TEXT DEFAULT 'INTERNAL', -- PUBLIC|TEASER|INTERNAL|CONFIDENTIAL
    updated_at           TEXT DEFAULT (datetime('now'))
);

-- ── Claim Database (#52) — segurança regulatória p/ IA gerar conteúdo ─────
-- Regra: nenhum claim sai sem estar aqui como APPROVED. Anvisa-safe por padrão.
CREATE TABLE IF NOT EXISTS product_claims (
    id                   INTEGER PRIMARY KEY AUTOINCREMENT,
    product_id           INTEGER REFERENCES products(id),
    claim                TEXT NOT NULL,
    source               TEXT,
    evidence             TEXT,
    regulatory_status    TEXT,                 -- APPROVED | PENDING | PROHIBITED
    approved_language    TEXT,                 -- redação permitida
    prohibited_language  TEXT,                 -- o que NUNCA dizer
    reviewed_at          TEXT
);

CREATE INDEX IF NOT EXISTS idx_products_brand ON products(brand, line, status);
CREATE INDEX IF NOT EXISTS idx_claims_product ON product_claims(product_id, regulatory_status);

CREATE INDEX IF NOT EXISTS idx_content_platform ON content(platform, published_at);
CREATE INDEX IF NOT EXISTS idx_content_pillar   ON content(pillar);
CREATE INDEX IF NOT EXISTS idx_dna_ref          ON video_dna(ref_id);
CREATE INDEX IF NOT EXISTS idx_vf               ON viral_formats(vf_id);
