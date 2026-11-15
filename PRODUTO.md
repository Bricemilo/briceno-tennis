# Briceno Tennis — registro do produto

Endereço: https://bricemilo.github.io/briceno-tennis/
Proposta e pesquisa: `PROPOSTA.md`. Sistema visual: `fonte/DESIGN.md`.

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
