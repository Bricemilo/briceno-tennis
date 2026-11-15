# Briceno Tennis — instruções para o Claude

Leia também `PROPOSTA.md`: a proposta aprovada para começar, a pesquisa científica e as fontes.

## Quem é o dono e como falar com ele
- Camilo Briceño, nutricionista e pai de duas tenistas infantis. Criador do Briceno Life (repositório `Bricemilo/nutri-pratico`), app irmão já publicado.
- Fale sempre em **português**, em linguagem simples, sem jargão técnico. Respostas curtas e diretas.
- Ele aprova com "Ok", "Pode" ou "Publica". Sem aprovação explícita, nada vai para o app publicado.

## O padrão (inegociável)
- **Tudo baseado na ciência.** Cada recurso registra a evidência e a força dela (forte, moderada ou fraca). Recurso com evidência fraca nunca é central. Quando a evidência vem de adultos e não de crianças, dizer isso.
- **Visual:** premium, elegante, luxuoso, moderno, minimalista, fácil de entender, rápido, prático e eficiente. **Mínimo de botões possível.** Nenhum botão sem ação.
- **Crianças primeiro:** sem notas, rankings, competição, sequências, medalhas ou cobrança. "O que está bom" vem antes de "Para melhorar". Nada de contar calorias de criança.
- Não inventar progresso, porcentagens, classificações de risco nem resultados. Nada de dado fictício mostrado como registro real. Nada de dados de demonstração no app de produção.
- Não diagnosticar e não recomendar doses de medicamento ou suplemento.
- Não reduzir fontes a tamanhos desconfortáveis. Funcionar bem de 320 px de largura até iPhones grandes, com texto grande do iOS.

## Dados e privacidade
- Dados de crianças: ficam **só no aparelho** (localStorage), com Face ID (WebAuthn/passkey, como no Briceno Life) e backup em arquivo.
- **Nada de nuvem ou sincronização sem decisão explícita do Camilo** (ex.: treinador escrevendo no mesmo app). LGPD art. 14: dados de crianças exigem consentimento do responsável.
- Não apagar dados em migrações. Não mudar a chave de armazenamento depois de publicada. Nenhuma chave de API exposta. Nenhuma dependência desnecessária.
- Nunca orientar a apagar o ícone da tela inicial sem backup: no iPhone, apagar o ícone apaga os dados do app.
- O e-mail e dados pessoais do Camilo são privados: nunca enviá-los a serviços externos.

## Jeito de trabalhar
1. Pesquisar e propor antes de construir quando a ideia for nova (com fontes).
2. Construir numa branch de proposta (`proposta-vN-...`), testar (Playwright: o Chromium já vem instalado; `require('playwright')` funciona) e mandar **capturas de tela** (iPhone, 393×852 e 320 px).
3. Só depois do "Ok": juntar na `main`, registrar a mudança em `PRODUTO.md` (o que mudou, evidência, limites), gerar o app, commit, push e conferir a publicação.
4. Nunca dizer que algo foi testado se não foi. Testado no simulador ≠ testado no iPhone: dizer qual.
5. Proteger contra toque duplo, ter "Desfazer" nas ações importantes, isolar os dados de cada atleta/perfil.
6. Commits sem identificador de modelo no texto.

## Base técnica (igual ao Briceno Life)
- PWA de arquivo único em JavaScript puro (sem framework), instalável no iPhone pela tela inicial, funcionando sem internet (service worker).
- Fonte em `fonte/`, um script `fonte/build.sh` gera `index.html` e `docs/` (o que o GitHub Pages publica).
- Publicação: repositório público; GitHub Pages em **Settings → Pages → Deploy from a branch → `main` / `/docs`** (o Camilo precisa ativar isso uma vez pelo site do GitHub). Endereço: `https://bricemilo.github.io/briceno-tennis/`.
- O Briceno Life (`Bricemilo/nutri-pratico`, público) é a referência de padrões: abertura animada, Face ID, backup, folhas (sheets), toasts com Desfazer, design tokens claro/escuro. Pode ser lido para reaproveitar ideias; nunca alterado a partir daqui.
- Identidade própria do Tennis, da mesma família visual da Briceno Company.
