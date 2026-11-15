#!/bin/sh
# Gera as duas saídas a partir de fonte/: index.html (página única) e docs/ (app instalável, GitHub Pages).
# Uso: sh fonte/build.sh   (na raiz do repositório)
set -e
ROOT=$(cd "$(dirname "$0")/.." && pwd)
python3 - "$ROOT" <<'PY'
import sys, hashlib, re
R = sys.argv[1]
t = open(f"{R}/fonte/app.html", encoding="utf-8").read()
app = open(f"{R}/fonte/app.js", encoding="utf-8").read()
import base64
mark = '<img src="data:image/jpeg;base64,' + base64.b64encode(open(f"{R}/fonte/icone-288.jpg", "rb").read()).decode() + '" alt="" width="96" height="96">'
page = t.replace("__MARK__", mark).replace("<script>__APP__</script>", "<script>\n" + app + "\n</script>")
assert "__APP__" not in page and "__MARK__" not in page
open(f"{R}/index.html", "w", encoding="utf-8").write(page)
cut = page.index("</head>")
head, body = page[:cut], page[cut:]
ver = hashlib.sha1(page.encode()).hexdigest()[:10]
DEV = [(440,956,3),(420,912,3),(402,874,3),(430,932,3),(393,852,3),(428,926,3),(390,844,3),(375,812,3),(414,896,3),(414,896,2),(414,736,3),(375,667,2),(320,568,2)]
launch = "".join(f'<link rel="apple-touch-startup-image" media="screen and (device-width: {w}px) and (device-height: {h}px) and (-webkit-device-pixel-ratio: {r}) and (orientation: portrait)" href="icons/launch/{w*r}x{h*r}.png">\n' for w, h, r in DEV)
pwa = """<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-title" content="Tennis">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="theme-color" content="#0B0A09">
<link rel="manifest" href="manifest.webmanifest">
<link rel="apple-touch-icon" href="icons/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="192x192" href="icons/icon-192.png">
""" + launch
tail = """<script>
if ("serviceWorker" in navigator && (location.protocol === "https:" || location.hostname === "localhost")) navigator.serviceWorker.register("sw.js").catch(() => {});
if (navigator.storage && navigator.storage.persist) navigator.storage.persist().catch(() => {});
</script>
</body>"""
docs = head + pwa + body.replace("</body>", tail, 1)
open(f"{R}/docs/index.html", "w", encoding="utf-8").write(docs)
sw = open(f"{R}/fonte/sw.js", encoding="utf-8").read()
sw = re.sub(r'const VERSION = "[^"]*";', f'const VERSION = "{ver}";', sw)
open(f"{R}/docs/sw.js", "w", encoding="utf-8").write(sw)
print("versão", ver)
PY
node -e '
const fs=require("fs"); const html=fs.readFileSync(process.argv[1],"utf8");
const re=/<script>([\s\S]*?)<\/script>/g; let m, n=0;
while((m=re.exec(html))){ new Function(m[1]); n++; }
console.log("scripts sem erro de sintaxe:", n);' "$ROOT/docs/index.html"
