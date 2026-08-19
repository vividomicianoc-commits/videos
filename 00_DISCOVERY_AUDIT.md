# 00 — DISCOVERY AUDIT (Fase 0)

Auditoria do ambiente real. Tudo aqui foi **verificado por execução**, não presumido.
Data da auditoria: 2026-08-19.

---

## 1. Runtime / infraestrutura local (Claude Code)

| Recurso | Status | Nota |
|---|---|---|
| Python | ✅ 3.11.15 | + módulo `sqlite3` embutido (3.45) |
| Node.js | ✅ 22.22 | |
| npm / bun | ✅ 10.9 / 1.3 | |
| Git | ✅ 2.43 | repositório ativo neste diretório |
| curl / jq | ✅ | requisições HTTP + parse JSON |
| **FFmpeg / ffprobe** | ❌ ausente | necessário p/ pipeline de vídeo — ver abaixo |
| **yt-dlp** | ❌ ausente | necessário p/ obtenção de mídia — ver abaixo |
| **whisper** (local) | ❌ ausente | transcrição — usar Descript/API em vez de local |
| sqlite3 (CLI) | ❌ ausente | mas o módulo Python cobre 100% do uso |
| Disco | ✅ ~30 GB livres | ambiente **efêmero**: só sobrevive o que for commitado |

**Implicação crítica:** o ambiente é **efêmero e reconstruído a cada sessão**. Tudo que
tem valor duradouro (memória, dados, playbook) precisa estar **commitado no git** ou
em armazenamento externo (Supabase, Notion, Drive). Isso já está previsto na arquitetura.

**Sobre FFmpeg/yt-dlp ausentes:** não é bloqueio. São instaláveis por sessão
(`pip install imageio-ffmpeg yt-dlp`) quando o pipeline de vídeo rodar, OU
substituíveis por Descript (edição/transcrição) e pela API oficial das plataformas.
Ver `GAP_ANALYSIS.md`.

---

## 2. Conectores instalados (verificado via ListConnectors)

### ✅ Conectados E ativos nesta sessão
| Conector | Cobre no VITÓRIA OS |
|---|---|
| **Supermetrics** | Analytics de **26 fontes sociais** — o motor de dados #41/#42 |
| **Google Calendar** | Calendar-to-Content (#25) — fuso America/Sao_Paulo |
| **Google Drive** | Armazenamento de mídia/brandbooks (#20, #66) |
| **Gmail** | Oportunidades por email, outreach (#52, #53) |
| **Notion** | CRM, memória, content tracking (#34, #52, #55, #66) |
| **Canva** | Carrosséis, posts, thumbnails (#31, #32) |
| **Adobe for creativity** | Firefly, edição de imagem, vídeo, fontes (#31, #35) |
| **Gamma** | Apresentações, socials, sites (#31) |
| **Figma** | Design system, diagramas (#32) |
| **Supabase** | Data warehouse em produção (#42, #66) |
| **Shopify** | E-commerce Joyeat/Joy Power → atribuição (#63) |
| **GitHub** | Versionamento deste próprio OS |

### ⚠️ Conectados mas DESATIVADOS nesta sessão (basta ativar no chat)
| Conector | Por que importa |
|---|---|
| **Descript** | **Edição de vídeo por prompt + transcrição** — chave para #35/#16 |
| **Adobe Marketing Agent** | Insights de campanha/audiência |
| **Microsoft 365** | SharePoint/Outlook/Teams (só se você usar) |

---

## 3. Analytics — o que está VIVO agora (verificado via Supermetrics)

Prova real executada. Status de autenticação das fontes sociais:

| Fonte | ID | Status | Uso |
|---|---|---|---|
| **Instagram Insights** | `IGI` | ✅ **AUTENTICADO** | Seus dados próprios — pronto p/ usar hoje |
| **TikTok Organic** | `TIKBA` | ✅ **AUTENTICADO** | Seus dados próprios — pronto p/ usar hoje |
| YouTube | `YT2` | ❌ não autenticado | Requer login (ver checklist) |
| LinkedIn Pages | `LIP` | ❌ não autenticado | Requer login |
| Threads Insights | `THRDS` | ❌ não autenticado | Opcional |
| **YouTube Public Data** | `YTPD` | ⚪ não requer auth | **Analisar creators externos** |
| **Instagram Public Data** | `IGPD2` | ⚪ público | Inteligência de creators |
| Facebook / Pinterest Public | `FBPD`/`PIPD` | ⚪ público | Inteligência de mercado |

**Conclusão:** os dois pilares da sua marca pessoal (IG + TikTok) já entregam dados
próprios **agora**, e as fontes de *dados públicos* já abrem o Creator Intelligence
Radar (#11) sem custo extra. Este é o maior Quick Win disponível.

---

## 4. O que NÃO existe como conector nativo (e a rota alternativa)

| Capacidade desejada | Rota escolhida |
|---|---|
| Publicação/agendamento social | API oficial (Meta/TikTok/LinkedIn) OU plataforma (Metricool/Postiz) — ver GAP |
| DM Instagram automation | Meta Messaging API (requer app + revisão) — Fase 6 |
| Download autorizado de vídeo de creators | yt-dlp local + respeito a ToS — Fase 1 |
| Análise audiovisual (frames/cenas) | Pipeline próprio: FFmpeg + visão do Claude — Fase 1 |
| Transcrição em escala | Descript (conector) OU Whisper API — Fase 1 |

Nenhuma dessas é "impossível". Todas têm rota definida no `CONNECTOR_MAP.md`.

---

## 5. Segredos / credenciais presentes no ambiente

Detectados (nomes apenas): `GITHUB_TOKEN`, `GH_TOKEN`, `AWS_ACCESS_KEY_ID`,
`AWS_SECRET_ACCESS_KEY`, `CLOUDSDK_AUTH_ACCESS_TOKEN`. Ou seja: git, possivelmente
S3 e gcloud já disponíveis. **Nenhuma** chave de Meta/TikTok/OpenAI presente ainda —
essas entram via checklist quando necessário.

---

## Veredito da Fase 0

O ambiente está **muito acima** do ponto de partida típico. A estratégia correta é
**connector-first**: ~85% do VITÓRIA OS sai de conectores já pagos/conectados. Código
próprio fica reservado para o que é proprietário (memória, Video DNA, playbook) e para
o pipeline de vídeo. Próximo passo: `CONNECTOR_MAP.md`.
