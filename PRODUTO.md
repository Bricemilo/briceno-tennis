# Briceno Tennis — registro do produto

Endereço: https://briceno-tennis.pages.dev/ (Cloudflare Pages, desde 20/11/2026; o Cloudflare só hospeda o app, nenhum dado vai para a nuvem). Endereço antigo, até a confirmação da migração: https://bricemilo.github.io/briceno-tennis/
Proposta e pesquisa: `PROPOSTA.md`. Sistema visual: `fonte/DESIGN.md`.

## v6 · Backup no padrão do Briceno Life e nova hospedagem (publicada em 21/11/2026, aprovada pelo Camilo com "Publica")

### O que mudou
- **Hospedagem:** Cloudflare Pages (`briceno-tennis.pages.dev`), projeto `briceno-tennis`, pasta `docs`, publicação automática a partir da `main`. A migração foi feita pelo Camilo com o "Backup com fotos e vídeos" e conferida no iPhone. O endereço antigo fica até 22/11/2026.
- **Diretriz da empresa Briceno** registrada em `CLAUDE.md`. A versão anterior foi guardada na branch `v5-estavel` antes desta publicação.
- **Tela de backup:**
  - passo a passo do iPhone (Salvar backup → Salvar em Arquivos → iCloud Drive → Salvar);
  - um botão principal "Salvar backup", que gera o backup completo, com fotos e vídeos;
  - opção discreta "Salvar só os registros";
  - confirmação em verde, abaixo do botão, com o nome do arquivo.
- **Boas-vindas:** bloco "Já usa o Briceno Tennis? Restaurar meus dados", que abre uma tela só de restaurar, com o passo a passo.
- **Restauração mais segura:** grava primeiro as fotos e vídeos; antes de trocar os registros, guarda uma cópia dos atuais (`bricenotennis.v1.antes-de-restaurar`); tem "Desfazer". Se faltar espaço, nada é alterado.

### Testes
- Simulador (Chromium com Playwright):
  - backup completo com confirmação verde;
  - restauração pelas boas-vindas em outro perfil de navegador, com as 3 fotos e vídeos;
  - restauração de backup só de registros (.json), mostrando a compatibilidade;
  - fluxo completo sem erros.
- **No iPhone:** o "Salvar em Arquivos" é do próprio iPhone e foi simulado nas capturas.

## v5.2 · Golpe antes do torneio e "antes e agora" no Hoje (publicada em 16/11/2026, aprovada pelo Camilo com "Publica")

### O que mudou
- **Hoje:** o cartão Golpe vem antes do Torneio, seguindo a regra do app de processo antes de resultado.
- **O cartão Golpe mostra a evolução:** com 2 ou mais vídeos do mesmo golpe, aparece "Forehand · antes e agora" e o intervalo ("5 meses · comparar"). O toque abre a comparação lado a lado, com preferência para o golpe que tem "melhor golpe". Com um vídeo só, o cartão continua como antes.
- O nome do cartão continua "Golpe", para não repetir o nome da aba Evolução.

### Testes
- Simulador (Chromium com Playwright), 393 e 320 px: o cartão abre a comparação com os 2 vídeos. Fluxo completo sem erros.

## v5.1 · Hoje mais leve e ícone de Torneios (publicada em 16/11/2026, aprovada pelo Camilo com "Publicar")

### O que mudou
- **Hoje sem o cartão Corpo:** ficam Foco atual, Torneio | Golpe e Semana, e a tela cabe sem rolar. A pergunta semanal sobre dor foi para o topo de Treinos (abaixo do gráfico) e continua na área Física.
- **Ícone de Torneios:** a chave do torneio (linhas que se juntam até a final) no lugar da bandeira, na barra, nos cartões, no "+" e na lista. O troféu fica só nos títulos.

### Testes
- Simulador (Chromium com Playwright), 393 e 320 px: fluxo completo sem erros.

## v5 · Evolução pelas 4 áreas do tenista (publicada em 16/11/2026, aprovada pelo Camilo com "Publica")

### O que mudou
- **Abas:** Hoje · Treinos · + · Evolução · Torneios. "Torneios" substitui "Carreira": é mais claro e sem o peso de "carreira" para uma criança. O currículo continua lá dentro.
- **Aba Evolução:**
  - Linha do tempo (grama). Os marcos registrados: início, bolas, prioridades alcançadas, primeiro vídeo de cada golpe, títulos e raquetes.
  - 4 cartões fixos, um por área: Técnica (bola), Tática (azul-noite), Física (azul-celeste) e Mental (âmbar).
  - Prioridades de melhoria em ordem.
- **Página de cada área:**
  - prioridades da área;
  - Técnica: golpe preferido e os 7 golpes com vídeos;
  - Tática: jogos recentes;
  - Física: Corpo e referência de horas;
  - Mental: diversão;
  - anotações da área e a evidência.
- **Prioridades com área** (opcional). O Foco atual mostra a área.
- **"Áreas trabalhadas"** no registro de treino e de jogo (opcional; golpes entram como técnica).
- **Guia:** "As 4 áreas do tenista" e "O que o esporte deve desenvolver na criança" (4 Cs, sem nota).

### Evidência
| Decisão | Base | Força |
|---|---|---|
| Técnica, tática, física e mental, trabalhadas juntas | ITF Coaching Review (2015, 2016); USPTA | Consenso |
| Peso da área mental em todas as fases | MacNamara, Button e Collins, 2010 | Fraca a moderada (qualitativa) |
| 4 Cs como orientação (sem nota) | Côté e colaboradores, 2010 | Consenso |
| Linha do tempo comparando a atleta com ela mesma | Harwood, 2015; Harkin, 2016 | Moderada |

### Dados
- Chave mantida. Novos campos: `area` nas prioridades e `areas` nos registros. As prioridades antigas ficam sem área até o Camilo escolher.

### Testes
- Simulador (Chromium com Playwright), 393 e 320 px e texto grande: as 4 áreas, a linha do tempo, prioridades com área e o fluxo completo (vídeos, PDF, backup completo, sem internet), sem erros.

## v4 · Hoje fixo, Treinos, Corpo, Perfil e Currículo (publicada em 16/11/2026, aprovada pelo Camilo com "Publica")

### O que mudou
- **Abas:** Hoje · Treinos · + · Golpes · Carreira. "Hoje" é o mesmo nome do Briceno Life e segue a regra da Apple de abas com uma palavra.
- **Hoje** é um painel fixo que não cresce:
  - Foco atual (âmbar, com "há X semanas");
  - Torneio | Golpe;
  - Semana com mini-gráfico de segunda a domingo (saibro);
  - Corpo (celeste).
  A lista de registros foi para Treinos.
- **Cartões com tamanho fixo:** título em 1 linha, valor em até 2 e legenda em 1, com "…". A lâmina de luz ficou ~50% mais suave.
- **Treinos** (nova): gráfico de segunda a domingo por tipo (treino, golpes, jogo), navegação por semana, totais, referência de horas, registros da semana e histórico das semanas anteriores.
- **Corpo:**
  - pergunta semanal de um toque ("Teve dor nesta semana?");
  - registro de desconforto (local, lado, intensidade 0–10, impacto no tênis, observação, resolvido em);
  - histórico por mês e orientação de quando procurar o médico.
  - Sem contador de "dias sem dor".
- **Foco atual** no lugar de "Foco da semana": mostra há quanto tempo está em trabalho.
- **Perfil da atleta** (pelo nome no topo): foto, bolas, competências, equipamento, mês de nascimento, dados, Guia, Backup e Face ID. A aba Evolução deixou de existir, e seu conteúdo foi para o Perfil. As Prioridades foram para Golpes.
- **Currículo** (em Carreira):
  - modelos Completo, Uma página e Universidade EUA (inglês, com textos próprios);
  - puxa foto, dados, títulos, resultados marcados, etapas e equipamento;
  - editável;
  - visualização e PDF gerado no aparelho (canvas para PDF, sem biblioteca externa).

### Evidência
| Decisão | Base | Força |
|---|---|---|
| Pergunta semanal sobre dor | Clarsen e colaboradores, 2013 (OSTRC: ~10× mais problemas de excesso de uso); validação OSTRC-H2 em 12–17 anos | Moderada a forte |
| Importância em juniores de tênis | Pluim e colaboradores, 2016 (21% com problema de saúde por semana; 11–14 anos) | Moderada |
| Sem contador de dias sem dor | Risco de esconder sintomas; regra do projeto (sem sequências) | Consenso / princípio |
| Foco atual com metas próximas | Bandura e Schunk, 1981 (crianças) | Moderada |
| Registrar o progresso semanal | Harkin e colaboradores, 2016 | Moderada a forte |

### Dados
- Chave `bricenotennis.v1` mantida. Novos campos: `health`, `focus`, `photo` e `cv`. Nada foi apagado ou migrado.
- O foco atual existente conta desde a criação da prioridade.

### Testes
- Simulador (Chromium com Playwright), 393 e 320 px e texto grande:
  - fluxo completo;
  - desconforto e resolvido;
  - foto da atleta;
  - currículo em PDF (válido, 1 página, 131 KB) e modelo em inglês;
  - vídeos;
  - backup completo restaurado;
  - abre sem internet, sem erros.
- Corrigido o transbordo das etiquetas do Guia com texto grande.
- **Ainda não testado no iPhone:** compartilhar o PDF, foto pela câmera.

## v3 · Diário completo e sequência de cores (publicada em 15/11/2026, aprovada pelo Camilo com "Ok")

### O que mudou
- **Diário sempre completo, mesmo vazio.** Cada cartão vazio é um convite com ação, nunca uma cobrança. Ordem:
  1. Foco da semana.
  2. Próximo torneio | Golpe em vídeo (o "melhor golpe" ou o último vídeo, com miniatura).
  3. Depois do jogo (só quando houve jogo).
  4. Últimos 7 dias: Tênis | Descanso, mais a Carga. Sem treino na semana, aparece o convite "Nenhum treino ainda".
  5. Registros (só quando existem).
- **Sem ranking na tela inicial.** Resultados ficam em Torneios.
- **Sequência de cores:**
  - cada cor uma vez por tela;
  - quente e frio alternados, como na Home do Briceno Life;
  - da luz (âmbar) para a profundidade (azul-noite).
  - Foco da semana passou para âmbar, a mesma cor das Prioridades no Briceno Life, e a bola amarela ficou para golpes e vídeos.
  - No "+": Treino | Jogo · Torneio | Golpes.
  - "As cores do app" no Guia segue a ordem da tela.

### Evidência
| Decisão | Base | Força |
|---|---|---|
| Cartões vazios com convite e caminho direto | Nielsen Norman Group, telas vazias em aplicativos (3 diretrizes) | Consenso de especialistas |
| Mostrar e registrar o progresso | Harkin e colaboradores, 2016 (meta-análise, 138 estudos, d = 0,40; maior quando registrado) | Moderada a forte (maioria adultos) |
| Sem ranking, foco no processo e em si mesma | Harwood e colaboradores, 2015; Williamson e colaboradores; ITF (12 anos ou menos sem ranking) | Moderada |

### Testes
- Simulador (Chromium com Playwright), 393 e 320 px: Diário vazio e em uso, "+", cores no Guia, fluxo completo (incluindo vídeos e backup completo), sem erros.

## v2 · Aba Golpes com fotos e vídeos (publicada em 15/11/2026, aprovada pelo Camilo com "Publica")

### O que mudou
- **Abas:** Diário · Golpes · + · Torneios · Evolução, por ordem de uso no dia a dia. O **Guia** saiu da barra e abre pelo nome no topo ("Guia e referências"), com "‹ Voltar". É o mesmo padrão do Briceno Life, em que o Perfil fica no seletor do topo.
- **Aba Golpes:** golpe preferido em destaque e os 7 golpes, cada um com miniatura, contagem de vídeos, fotos e anotações e a data do último registro.
- **Página do golpe:**
  - fotos e vídeos (câmera, galeria ou arquivos);
  - recorte de 5 s;
  - câmera lenta (½ e ¼);
  - "Melhor golpe" (um por golpe);
  - "Comparar antes e agora", lado a lado e sincronizado, com o intervalo entre as datas;
  - anotações do golpe.
- **Registrar → Golpes:** foto ou vídeo opcional na própria anotação.
- **Backup e espaço:**
  - mostra quanto ocupam os registros e a mídia;
  - backup dos registros (.json) e backup completo com fotos e vídeos (.btbackup);
  - "Liberar espaço": guarda um por mês por golpe, mais os marcados como melhor golpe;
  - restauração dos dois formatos.

### Decisões de memória (custo zero, sem nuvem)
- A mídia fica num banco separado do aparelho (IndexedDB `bricenotennis-midia`). Os registros continuam na chave `bricenotennis.v1`, que não mudou. Nenhum dado foi apagado nem migrado.
- O app guarda cópias leves: vídeo de até 5 s em 720p (cerca de 2 MB) e foto com até 1600 px (cerca de 0,3 MB). O original continua no app Fotos do iPhone.
- Arquivo apagado só sai de verdade depois do prazo do "Desfazer". Arquivos de backups antigos nunca são apagados automaticamente.
- O backup completo é montado e lido por partes, sem carregar todos os vídeos na memória de uma vez.
- Estimativa: cerca de 170 MB por ano por atleta, com um vídeo por golpe por mês.

### Evidência
| Recurso | Base | Força |
|---|---|---|
| Vídeo do próprio movimento | Mödinger, Woll e Wagner, 2021 (revisão sistemática, 11 estudos, educação física) | Moderada |
| Visual comparado com verbal | Zhou, Shao e Wang, 2021 (revisão sistemática) | Limitada |
| "Melhor golpe" (rever os próprios acertos) | Estudos de auto-observação positiva (resultados mistos; mais motivação em crianças em alguns) | Fraca a moderada |

### Testes
- Simulador (Chromium com Playwright), 393 e 320 px:
  - vídeo de 7 s recortado para 5 s;
  - foto, câmera lenta, "melhor golpe" e comparação com os dois vídeos tocando;
  - backup completo restaurado em outro perfil de navegador, com as 3 mídias recuperadas;
  - abre sem internet, sem erros no console.
- **Ainda não testado no iPhone**: filmar pelo app, vídeo .mov da galeria, tempo de preparo, salvar o .btbackup no app Arquivos.

## v1 · Fase 1 (publicada em 15/11/2026, aprovada pelo Camilo com "Publica")

### O que tem
- **Atletas**: um perfil por atleta (nome, categoria, nascimento, início no tênis, mão dominante). Troca pelo nome no topo. Dados de cada atleta separados.
- **Diário**:
  - foco da semana (prioridade nº 1);
  - lembrete depois do jogo;
  - últimos 7 dias com tempo de tênis, dias sem tênis, carga (esforço × minutos) e a referência de horas para a idade;
  - lista de registros.
- **Registrar (+)**: treino, jogo, sessão de golpes e torneio. Sempre "O que está bom" antes de "Para melhorar", e "Se divertiu?".
- **Evolução**:
  - bola atual e próxima;
  - linha do tempo das bolas com a duração de cada etapa;
  - previsão da família e faixa da ITF;
  - competências da ITF para mudar de bola;
  - história de cada golpe;
  - golpe preferido e menos preferido, com data;
  - prioridades em ordem;
  - raquetes e cordas (única ou híbrida, com tensões);
  - mês de nascimento (idade relativa).
- **Carreira**: próximo torneio, demais planejados e resultados por ano (campeã, vice etc., placares e descrição).
- **Guia**: recomendações com a força da evidência, "As cores do app" e a lista completa de referências.
- **Segurança e dados**:
  - dados só no aparelho (localStorage, chave `bricenotennis.v1`);
  - Face ID opcional com código de recuperação;
  - backup e restauração em arquivo;
  - funciona sem internet;
  - "Desfazer" nas ações importantes;
  - proteção contra toque duplo.

### Evidência usada (resumo, detalhes no Guia e em `PROPOSTA.md`)
| Recurso | Base | Força |
|---|---|---|
| Bolas, quadras, raquetes e competências | ITF, manual Tennis10s (lido no original) e Regras do Tênis | Regra e consenso |
| Equipamento adaptado para aprender | Buszard e colaboradores, 2016; revisão de 2025 | Moderada (crianças) |
| Horas por semana ≤ idade; organizado ≤ 2× brincadeira livre | Jayanthi e colaboradores, 2015 | Moderada (observacional, 8 a 18 anos) |
| Especialização e lesão | Bell e colaboradores, 2018 (meta-análise) | Moderada |
| Descanso semanal e anual | Academia Americana de Pediatria, 2024 | Consenso |
| Sono por idade | Academia Americana de Medicina do Sono, 2016 | Consenso forte |
| Prioridades como metas de processo | Williamson e colaboradores (meta-análise, 27 estudos) | Moderada (maioria adultos) |
| "O que está bom" primeiro | Frontiers in Psychology, 2012 | Moderada |
| Lembrete depois do jogo | Harwood e Knight; Knight e Holt | Moderada (qualitativa) |
| Resultados juvenis como sinal fraco | Brouwers e colaboradores, 2012; Grove e Jetter, 2014 | Moderada |
| Mês de nascimento | Estudos de idade relativa no tênis juvenil | Moderada |
| Cordas: só registro | Bower e Cross, 2003 e 2008 | Fraca para crianças (adultos) |
| Esforço 0 a 10 da sessão | Estudos de PSE em tenistas e em jovens | Moderada (adultos) / preliminar (jovens) |

### Limites (ditos no app)
- Não prevê a data de mudar de bola: mostra a faixa da ITF; a data é da família com o treinador.
- Não existe número de horas por objetivo ou nível: o app diz isso e não inventa.
- Não recomenda corda, tensão, dose de suplemento ou remédio. Não faz diagnóstico.
- Sem notas, rankings, medalhas, sequências ou classificação de risco. Resultados ficam como fatos na Carreira.

### Visual
- Mesma família do Briceno Life (cartões-joia, vidro, listas discretas, barra com "+" cobre), com identidade do tênis.
- Cores com sentido: saibro (treino), bola amarela (foco e golpes), azul-noite (jogos e carga), azul-celeste (descanso), grama (carreira) e bolas da ITF (etapas).
- Ícone do "B" cobre da família com a bola de tênis, criado no ChatGPT.
- Tema escuro. O claro fica preparado, mas não ativado.

### Testes
- Simulador (Chromium com Playwright), iPhone 393×852 e 320 px, texto grande:
  - cadastro, treino, jogo, golpes, torneios, prioridades, raquete e cordas;
  - apagar com "Desfazer";
  - toque duplo;
  - abrir sem internet;
  - sem erros no console.
- **Ainda não testado no iPhone de verdade**: Face ID, backup pelo compartilhar do iPhone, instalação pela tela inicial e formato da data.

### Próximas etapas
- Fase 1b: currículo com 3 modelos (completo, uma página e perfil para universidade nos EUA).
- Fase 2: nutrição da atleta.
- Treinador no app: só com decisão do Camilo (exige nuvem e consentimento, LGPD art. 14).
