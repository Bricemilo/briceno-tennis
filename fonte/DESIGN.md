# Briceno Tennis · sistema visual

Mesmo sistema do Briceno Life (BRICEÑO Digital Jewelry, ver `DESIGN-SYSTEM.md` do repositório `Bricemilo/nutri-pratico`), com a identidade do tênis.

## Três materiais
- **A · Cartões-joia (`.hc`, `jewelCard`)**: só a informação principal de cada tela. Construção da Home v35 do Briceno Life: base escura do material, luz no alto à esquerda, brilho embaixo à direita, lâmina de luz vetorial (`JEWEL`) e aro de 1 px aceso.
  - Diário: Foco da semana (`prio`), Tênis (`clay`), Descanso (`sleep`), Carga (`wb`), Registros (`move`).
  - Evolução: Bola atual e Próxima, no material da cor da bola (`b-red`, `b-orange`, `b-green`, `b-yellow`).
  - Carreira: Próximo torneio (`champ`).
  - Registrar (+): Treino (`clay`), Jogo (`move`), Golpes (`prio`), Torneio (`champ`).
- **B · Vidro (`.dj-glass` + tom `t-*`)**: referências, notas e cartões do Guia.
- **C · Discreto (`.list`, `.card`)**: listas, formulários e informação secundária.

## Regras
- Escuro, como o Briceno Life. O modo claro fica preparado nos tokens (`data-theme="light"`), sem estar ativado.
- Barra inferior igual à do Briceno Life: 49 pt de conteúdo, quatro abas e o "+" cobre de 48 pt no centro.
- Seletor de atleta no topo com o mesmo acabamento cobre do seletor de perfil.
- Títulos em SF Pro 720, subtítulo na cor `--hm-date`, cabeçalhos de seção em versalete dourado.
- Todo cartão-joia é um botão com ação. Não há botão sem ação.
- Tipografia em rem: acompanha o tamanho de texto do iPhone.
