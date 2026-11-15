# Briceno Tennis · sistema visual

Mesmo sistema do Briceno Life (BRICEÑO Digital Jewelry, ver `DESIGN-SYSTEM.md` do repositório `Bricemilo/nutri-pratico`), com a identidade do tênis.

## Cores com sentido no tênis
Cada material vem de uma quadra ou de um objeto do jogo. As telas mostram só as cores, sem nomes nem marcas de torneios.

| Material | Inspiração | Sentido | Onde |
|---|---|---|---|
| `saibro` | Quadras de saibro (Roland Garros e a maioria dos clubes do Brasil) | Construir o jogo, paciência, o treino de cada dia | Tênis na semana, Treino, Raquete |
| `bola` | A bola amarela oficial | Foco: olho na bola | Foco da semana, Golpes |
| `noite` | Quadras duras nas sessões noturnas (US Open) | Competição e intensidade | Carga da semana, Jogo |
| `celeste` | Quadra dura azul-clara de verão (Australian Open, o primeiro Grand Slam do ano) | Recomeço e recuperação | Descanso, referência de horas |
| `grama` | Grama com o roxo da tradição (Wimbledon) | Conquista e história | Próximo torneio, Torneio |
| `b-red` … `b-yellow` | Bolas da ITF | Progressão por etapas | Bola atual e próxima |

O cobre continua como a assinatura da família Briceno: "+", aba ativa, seletor do topo e botões principais.

## Três materiais
- **A · Cartões-joia (`.hc`, `jewelCard`)**: só a informação principal de cada tela. Construção da Home v35 do Briceno Life: base escura do material, luz no alto à esquerda, brilho embaixo à direita, lâmina de luz vetorial (`JEWEL`) e aro de 1 px aceso.
- **B · Vidro (`.dj-glass` + tom `t-*`)**: referências, notas e cartões do Guia.
- **C · Discreto (`.list`, `.card`)**: listas, formulários e informação secundária.

## Ícone
- Criado no ChatGPT, como o do Briceno Life: o mesmo "B" cobre da família, sobre fundo verde-grama, com a bola amarela no fim do traço.
- Original em `fonte/icone-original.png`. `python3 fonte/icones.py` recorta por dentro da moldura (o iPhone aplica os próprios cantos) e gera todos os tamanhos, a imagem da abertura e as telas de abertura do iPhone.

## Regras
- Escuro, como o Briceno Life. O modo claro fica preparado nos tokens (`data-theme="light"`), sem estar ativado.
- Barra inferior igual à do Briceno Life: 49 pt de conteúdo, quatro abas e o "+" cobre de 48 pt no centro.
- Seletor de atleta no topo com o mesmo acabamento cobre do seletor de perfil.
- Títulos em SF Pro 720, subtítulo na cor `--hm-date`, cabeçalhos de seção em versalete dourado.
- Todo cartão-joia é um botão com ação. Não há botão sem ação.
- Tipografia em rem: acompanha o tamanho de texto do iPhone.
