// Gera os ícones e as imagens de abertura do iPhone a partir de fonte/mark.svg.
// Uso: node fonte/icon.js   (na raiz do repositório)
const { chromium } = require('playwright');
const fs = require('fs'), path = require('path');
const ROOT = path.join(__dirname, '..');
const mark = fs.readFileSync(path.join(__dirname, 'mark.svg'), 'utf8');
const DEV = [[440,956,3],[420,912,3],[402,874,3],[430,932,3],[393,852,3],[428,926,3],[390,844,3],[375,812,3],[414,896,3],[414,896,2],[414,736,3],[375,667,2],[320,568,2]];
(async () => {
  const b = await chromium.launch(); const pg = await b.newPage();
  const out = path.join(ROOT, 'docs/icons'); fs.mkdirSync(path.join(out, 'launch'), {recursive: true});
  for (const [name, size, inset] of [['apple-touch-icon.png', 180, 0], ['icon-192.png', 192, 0], ['icon-512.png', 512, 0], ['icon-maskable-512.png', 512, 0.12]]) {
    await pg.setViewportSize({width: size, height: size});
    await pg.setContent(`<html><body style="margin:0;background:#0C0908"><div style="width:${size}px;height:${size}px;padding:${size*inset}px;box-sizing:border-box">${mark}</div></body></html>`);
    await pg.screenshot({path: path.join(out, name), clip: {x: 0, y: 0, width: size, height: size}});
  }
  for (const [w, h, r] of DEV) {
    const ctx = await b.newContext({viewport: {width: w, height: h}, deviceScaleFactor: r}); const p2 = await ctx.newPage();
    await p2.setContent(`<html><body style="margin:0;background:#0B0A09;display:flex;align-items:center;justify-content:center;height:${h}px"><div style="width:88px;height:88px;border-radius:22px;overflow:hidden">${mark}</div></body></html>`);
    await p2.screenshot({path: path.join(out, 'launch', `${w*r}x${h*r}.png`)});
    await ctx.close();
  }
  await b.close();
})();
