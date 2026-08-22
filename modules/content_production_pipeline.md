# MODULE — CONTENT PRODUCTION PIPELINE (plano → execução)

Transforma pauta aprovada em **peça pronta para aprovar**, com o máximo automatizado e o mínimo de
toque humano. Respeita o guardrail-mãe: **Claude prepara → Vitória aprova → sistema publica**
(nunca auto-publicar, `brand/10`).

## Status tracking (#34 do brief)
`IDEA → APPROVED → SCRIPTED → RECORDED → EDITING → READY → SCHEDULED → PUBLISHED → ANALYZED → REPURPOSED`
Cada conteúdo carrega seu status na página Notion "Planejamento Editorial" + tabela `content`.

## O fluxo e quem faz cada passo
| Passo | Automação | Quem | Ferramenta |
|---|---|---|---|
| 1. Pauta selecionada | AUTO (Chief of Content) | sistema | `chief_of_content.md` |
| 2. **Aprovar pauta** | HUMAN (1 toque) | Vitória | — |
| 3. Roteiro (2 versões A/B na voz) | AUTO | sistema | `brand/03` + `voice/approved` |
| 4. Legenda + variações por rede | AUTO | sistema | `03` + `08` (repurposing) |
| 5. Shot list / captura | AUTO | sistema | template por formato (`VIDEO_FORMAT_LIBRARY`) |
| 6. **Gravar os takes** | HUMAN | Vitória | celular |
| 7. Carrossel / estático | AUTO | sistema | **Canva** (precisa Brand Kit) |
| 8. Edição de vídeo | SEMI | sistema+Vitória | **Descript** (precisa raw + ativar) |
| 9. **Aprovar peça final** | HUMAN (1 toque) | Vitória | — |
| 10. Agendar/publicar | AUTO* | sistema | **falta conector** (ver abaixo) |
| 11. Medir + autópsia | AUTO | sistema | Weekly Growth + `intelligence/autopsies` |

\* auto **após** aprovação. Publicação imediata sem aprovação = proibida.

## O que já dá para automatizar HOJE (sem nada novo)
- Passos 1, 3, 4, 5: pauta → **roteiro A/B + legenda + versões TikTok/LinkedIn/Stories + shot list**, na sua voz, gravado no Notion. **Isto é o núcleo da execução e já funciona.**
- Fallback automático (#33): se a pauta era Reel e não deu para gravar → o sistema já entrega **Plan B (carrossel)** e **Plan C (estático + copy)** com o mesmo tema.

## O que precisa de 1 ativação sua
- **Canva Brand Kit** → passo 7 vira arquivo pronto (carrossel/estático on-brand), não briefing.
- **Descript** (ativar no chat) → passo 8: edição por prompt + legendas + versão por plataforma.

## O elo que falta para fechar 100% (publicação)
Publicar/agendar sozinho precisa de **um** destes (você escolhe):
- **Metricool / Postiz** (publicador multi-rede) — mais rápido, conecta IG/TikTok/LinkedIn.
- **Meta Graph API + TikTok Content Posting API** — oficial, exige app + revisão.
Até escolher: o sistema deixa **tudo pronto e agendado como rascunho**; você posta com 1 toque.

## Níveis de automação (resumo, `brand/10` Human Approval Matrix)
- **AUTO:** pauta, roteiro, legenda, shot list, repurposing, carrossel/estático, análise.
- **APPROVAL REQUIRED:** publicar qualquer peça, parceria, agendamento.
- **HUMAN ONLY:** crise, pessoal sensível, negociação, fé sensível.

## Como isso liga às rotinas do Cowork
O **Planejamento Editorial** (dom 8h) produz as pautas → após sua seleção, este pipeline gera os
pacotes e grava na página Notion "Planejamento Editorial" com status `SCRIPTED`. Você abre, aprova,
grava; o sistema marca `READY`. Nada some (git = cérebro, Notion = caderno).

## Princípio
Execução automática **não** é postar sozinho — é **eliminar todo o trabalho operacional entre a
ideia e o "só aprovar"**. O tempo da Vitória fica em: **gravar · decidir · aprovar** (o KPI Vitória
Touch Time cai, `brand/11`).
