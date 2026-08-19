# MODULE — INTELLIGENCE TO CONTENT ENGINE

Camada única que une todos os radares e transforma **sinal → oportunidade de conteúdo/decisão**.
As rotinas (`modules/routines/`) não operam isoladas: alimentam esta engine.

> Fluxo-mãe: `INTELIGÊNCIA → POSICIONAMENTO → FORMATO → EXECUÇÃO → PERFORMANCE → APRENDIZADO`.
> Objetivo: Vitória constantemente conectada ao que acontece **sem virar refém** disso — e
> **nunca descobrir primeiro no Instagram** um movimento que deveria ter chegado por aqui.
> A melhor oportunidade = **TIMING × RELEVÂNCIA × POSICIONAMENTO × FORMATO VALIDADO × EXPERIÊNCIA DE VITÓRIA**.

## Fontes de sinal (#3) → tabela `content_signals`
`opportunity_watch` (janela curta) · `radar` (Morning Brief, 24h) · `weekly_review` (padrões) ·
`creator_intel` (formatos/hooks/músicas) · `audience_intel` (dúvidas/DMs/linguagem) ·
`calendar`/real-life (reuniões, obra, viagens, lançamentos).

## Sinal ≠ pauta (#4) — o filtro
1) relação real com Vitória? 2) leitura/opinião própria? 3) experiência que permite falar?
4) fortalece um pilar? 5) tem timing? 6) há formato que comunica bem? 7) a audiência-alvo se
interessa? Resposta fraca → **não vira conteúdo**.

## Intelligence Fit Score (#5) — 0–10 cada → `fit_scores` (JSON)
RECENCY · VITÓRIA FIT · POSITIONING FIT · AUDIENCE FIT · AUTHORITY POTENTIAL · GROWTH POTENTIAL ·
CONTENT POTENTIAL · TIMING URGENCY.

## Classificação da oportunidade (#6) → `content_potential`
`IGNORE · WATCH · SAVE (evergreen) · WEEKLY CONTENT · PRIORITY CONTENT · SAME-DAY OPPORTUNITY`.

## As três pontes (#10–12) — obrigatórias antes de virar pauta
- **Positioning Bridge:** qual pilar fortalece? (nunca notícia sem ponte de posicionamento.)
- **Personal Experience Bridge:** há experiência de Vitória que faz falar **de dentro**, não de fora? (ex.: sinal sobre diferenciação de marcas saudáveis → desenvolvimento de Joyeat/Joy Power.)
- **Creator Format Bridge:** qual **formato validado** carrega melhor a ideia? (consultar Creator Intelligence — não inventar formato sempre.) Separar **WHAT WE SAY × HOW WE PACKAGE IT** (formato pode vir de outro nicho). Oportunidade máxima = **tema em momentum + formato validado** (#13).

## Segunda camada obrigatória (#9)
Não "o que aconteceu?" — **por que está acontecendo? o que indica? qual mudança maior? o que
ainda não é óbvio? como conecta a Vitória?** O que a audiência recebe é **a visão da Vitória**,
nunca um resumo do radar (#22). Transformação: `notícia → contexto → 2ª camada → opinião →
experiência → conteúdo` (#23).

## Timing (#15–18)
Tiers: `NOW · 24H · THIS WEEK · EVERGREEN`. Todo sinal tem `expiration` (#16). **Content
displacement (#17):** oportunidade muito superior pode substituir conteúdo planejado (o evergreen
se move) — **só** quando o *expected opportunity value* for claramente superior (não virar refém
de trend, #18).

## Roteamento (#25, #37–40) → `business_potential`
Classificar `CONTENT · BUSINESS · BOTH · NONE`. Nem todo sinal vira post — alguns viram decisão
Joyeat/Joy Power, pesquisa, produto, benchmark. Também rotear: **Relationship Signal** (founder
relevante lança projeto), **Collab Signal** (marca entrando em território) → Brand Collaboration
Radar. E sempre perguntar impacto em **Joyeat / Joy Power / Joy Group / Milhão** e no
posicionamento (founder/estrategista/pessoa de mercado/creator).

## Same-Day Content Mode (#31–34)
Oportunidade urgente aprovada → gerar rápido: melhor ângulo · formato · hook · roteiro curto ·
referências · assets · deadline. Preferir formatos low-friction (lo-fi, Palestrinha, talking head,
Story, carrossel simples). Story-first para testar reação; se gerar respostas → comment-to-content.
Sinal excepcional pode justificar produção maior (decisão por **IMPACT ÷ TIME**).

## Loops de aprendizado (#28–30)
Registrar `SIGNAL_ID → CONTENT_ID → FORMAT_ID → PERFORMANCE`: que tipos de sinal e que **fontes**
mais geram growth/authority/connection/oportunidade. Opportunity Watch se recalibra: **menos
alertas, mais ação**. Fonte social que chega antes da imprensa → candidata a prioridade crescente.

## Saídas
- **Weekly (#41):** 3 priority signals · 3 best content opportunities · 1–3 format opportunities · conteúdos a mover/cancelar · momentos reais a capturar.
- **Daily (#42):** só o que merece a atenção de Vitória — nunca despejar o monitoramento.
- **Chief of Content (#43):** recebe todas as fontes e responde *"o que fazemos com isso?"*.

## Hierarquia em conflito (#44)
1) Posicionamento → 2) Verdade → 3) Timing → 4) Audience Fit → 5) Format Validation →
6) Performance Potential → 7) Effort. **Nunca perseguir trend contra a identidade.**

## Regras anti-ruído (globais das rotinas)
Não tratar rumor/repost/interpretação de terceiro como fato · sensores de curadoria (FitFeed, Like
Magazine, Ana Brand Wellness, Academia da Independência, perfis afins) servem para **descobrir,
nunca confirmar** → buscar fonte primária ou 2ª fonte confiável antes de notificar · diferenciar
data do fato × data da matéria · separar fato de interpretação · não inventar tendência nem
transformar coincidência em padrão · se o dia/semana for fraco, dizer claramente. **SIGNAL PRIORITY
SCORE (0–10):** recência · novidade real · relevância para os territórios · potencial de crescer ·
**assimetria informacional** (alta quando pouco discutido mas bem sustentado; baixa quando saturado)
— serve só para priorizar atenção, nunca para transformar sinal fraco em fato.

## As quatro rotinas (ver `modules/routines/`) — papéis distintos no mesmo funil
Não são quatro versões da mesma coisa:
| Rotina | Cadência (America/Sao_Paulo) | Pergunta que responde |
|---|---|---|
| **Opportunity Watch** | de hora em hora (condicional) | *"tem algo acontecendo AGORA que Vitória precisa saber?"* |
| **Radar Estratégico** | diário 07:15 | *"o que aconteceu nas últimas 24h que realmente importa?"* |
| **Weekly Intelligence Review** | segunda 07:00 | *"o que a semana inteira está nos ensinando?"* |
| **Planejamento Editorial Semanal** | domingo 08:00 | *"diante de toda essa inteligência + vida real, o que vamos produzir?"* |

## CONSUMIR, NÃO REPLICAR (princípio de integração)
As quatro rotinas **já existem** como fonte contínua. O VITÓRIA OS **não recria os radares do
zero** — ele **ingere os outputs** deles em `content_signals` e os cruza com o resto do sistema.
Cadeia de integração até o Chief of Content:
```
Opportunity Watch + Radar diário + Weekly Review
        ↓  (ingestão em content_signals)
Creator Intelligence + Viral Formats
        ↓
Vitória Positioning + Voice + Pillars
        ↓
Agenda e vida real (Google Calendar)
        ↓
Performance histórica (warehouse)
        ↓
        CHIEF OF CONTENT  (modules/chief_of_content.md)
        ↓
melhores pautas + melhores formatos + melhor timing + execução
```
Quando uma rotina roda (em sessão própria/agendada), seu output é normalizado e gravado como
sinais; o Chief of Content lê `content_signals` + creators + agenda + performance + Constituição
para decidir. Assim os radares viram **matéria-prima acumulada**, não relatórios efêmeros.
