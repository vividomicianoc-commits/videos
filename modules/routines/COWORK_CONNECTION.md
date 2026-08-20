# CONEXÃO COWORK ↔ VITÓRIA OS

Como fazer os **agendamentos do Cowork** enxergarem tudo neste repositório em vez de rodarem no
escuro. Sem isto, cada rotina começa "amnésica". Com isto, cada rotina acorda já conhecendo a
Vitória, a voz, os guardrails e o histórico — e grava o que aprende de volta no repo.

## Setup (uma vez)
1. **Anexar este repo** como fonte no ambiente Cowork das rotinas: `vividomicianoc-commits/videos`.
2. Em cada agendamento, **colar o PREFIXO abaixo antes do prompt da rotina**. O prefixo obriga a sessão a ler o `CLAUDE.md` e seguir a Constituição.
3. Manter o resto do prompt da rotina como já está nos specs (`modules/routines/*.md`).

## PREFIXO padrão (colar no topo de TODA rotina do Cowork)
```
Você está operando o VITÓRIA OS. Antes de qualquer coisa:
1. Leia o CLAUDE.md na raiz do repositório vividomicianoc-commits/videos e siga TODAS as regras permanentes.
2. Leia a Constituição de Marca relevante em brand/ (mínimo: 01, 02, 03, 08, 10) e o spec desta rotina em modules/routines/.
3. Aplique voz (brand/03 + voice/approved), guardrails (brand/10, Human Approval Matrix) e provenance/confiança.
4. Ao terminar, grave o resultado no caminho indicado, faça commit no branch de trabalho e me notifique com um resumo curto e acionável.
Nunca publique nada sem aprovação. Prepare, não publique.
—
[prompt específico da rotina abaixo]
```

## Onde cada rotina grava (para o commit)
| Rotina Cowork | Spec (colar depois do prefixo) | Grava em |
|---|---|---|
| Opportunity Watch (horária) | `modules/routines/opportunity_watch.md` | `data/signals/AAAA-MM-DD.md` |
| Radar Estratégico (diário 7:15) | `modules/routines/radar_estrategico_diario.md` | `intelligence/radar/AAAA-MM-DD.md` |
| Weekly Intelligence Review (seg 7h) | `modules/routines/weekly_intelligence_review.md` | `intelligence/weekly-review/AAAA-Www.md` |
| Planejamento Editorial (dom 8h) | `modules/routines/planejamento_editorial_semanal.md` | `content/plan/AAAA-Www.md` |
| **Weekly Growth Analyst (seg 8h)** ⭐ | seção "Weekly Growth Analyst" do `CLAUDE.md` | `intelligence/weekly-growth/AAAA-Www.md` |

## Cobertura do que Vitória pediu
- **Analisar influencers** → incluir no Radar/Weekly e no Weekly Growth: rodar Creator Deep Dive (`brand/09`) dos @s da watchlist; gravar playbooks em `intelligence/creators/`.
- **Formatos virais** → detectar via Creator Intelligence, casar com `intelligence/viral-formats/VIDEO_FORMAT_LIBRARY.md`, criar VF-xxxx.
- **Análise de mercado** → Radar diário + Weekly Review.
- **Meu perfil na semana + resultado dos posts** → Weekly Growth Analyst (IG+TikTok reais + autópsia de outliers).
- **Estratégias de posicionamento + conteúdo** → Chief of Content (`modules/chief_of_content.md`) cruzando tudo → pautas no Planejamento Editorial.

## Nota técnica importante — LER vs ESCREVER
- **LER** o repo (Constituição, playbooks, histórico): ✅ funciona sem credencial — a sessão faz `git clone` do repo público e lê. É assim que as rotinas usam todo o conhecimento.
- **ESCREVER de volta** (git push) exige token de escrita, que a sessão do Cowork não tem por padrão. **Não colar token em prompt** (inseguro).

### Onde as rotinas GRAVAM o resultado (destino de escrita durável)
Ordem de preferência (sem token, sem risco):
1. **Notion** (o Cowork já tem escrita) — destino padrão. Criar uma base/página por rotina:
   Radar Diário · Weekly Review · Weekly Growth · Sinais · Planejamento. É o "caderno" durável.
2. **Google Drive** — alternativa (documento por semana).
3. **git push** — só se Vitória criar um **token fine-grained** (escrita apenas neste repo) e guardá-lo
   nos **secrets/env do ambiente Cowork** (nunca no texto do prompt). Opcional, não necessário.

O git é o **cérebro só-leitura**; Notion/Drive é o **caderno de escrita**. A memória acumula do
mesmo jeito. Ajustar o PREFIXO trocando "grave no caminho / faça commit" por "grave o resultado na
página do Notion desta rotina" quando o destino for Notion.

## O que ainda destrava mais valor (ação de Vitória)
- Conectar **YouTube/LinkedIn** no Supermetrics e ativar **Descript** → mais fontes para as rotinas.
- Preencher a **watchlist de @s** (`brand/09`) → o Creator Deep Dive tem alvos.
- Definir **metas** (`brand/11`) → o Weekly Growth compara contra alvo, não só contra o passado.
