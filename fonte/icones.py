# Gera os ícones, a imagem da abertura e as telas de abertura do iPhone a partir de fonte/icone-original.png
# (ícone criado no ChatGPT, mesma família do Briceno Life). Uso: python3 fonte/icones.py  (na raiz do repositório)
from PIL import Image, ImageFilter, ImageDraw
src = Image.open('fonte/icone-original.png').convert('RGB')
# a imagem original tem moldura arredondada própria e margem escura: recorta por dentro da moldura (o iPhone aplica os cantos dele)
sq = src.crop((148, 139, 1106, 1097)).resize((1024, 1024), Image.LANCZOS)
sq.save('fonte/icone.png')
out = 'docs/icons/'
for name, size in [('apple-touch-icon.png', 180), ('icon-192.png', 192), ('icon-512.png', 512)]:
    sq.resize((size, size), Image.LANCZOS).save(out + name, optimize=True)
# maskable (Android): conteúdo na zona segura, fundo estendido a partir da própria imagem desfocada
bg = sq.resize((512, 512), Image.LANCZOS).filter(ImageFilter.GaussianBlur(40))
fg = sq.resize((420, 420), Image.LANCZOS)
m = Image.new('L', (420, 420), 0); ImageDraw.Draw(m).rounded_rectangle((0, 0, 419, 419), radius=96, fill=255); m = m.filter(ImageFilter.GaussianBlur(10))
bg.paste(fg, (46, 46), m); bg.save(out + 'icon-maskable-512.png', optimize=True)
# imagem embutida no app (abertura e boas-vindas)
sq.resize((288, 288), Image.LANCZOS).save('fonte/icone-288.jpg', quality=88, optimize=True, progressive=True)
# telas de abertura do iPhone: fundo do app com o ícone no centro, nos cantos do iOS
DEV = [(440,956,3),(420,912,3),(402,874,3),(430,932,3),(393,852,3),(428,926,3),(390,844,3),(375,812,3),(414,896,3),(414,896,2),(414,736,3),(375,667,2),(320,568,2)]
for w, h, r in DEV:
    W, H = w * r, h * r; c = Image.new('RGB', (W, H), (10, 9, 8)); s = 104 * r
    ic = sq.resize((s, s), Image.LANCZOS); mk = Image.new('L', (s, s), 0); ImageDraw.Draw(mk).rounded_rectangle((0, 0, s - 1, s - 1), radius=int(s * .2237), fill=255)
    c.paste(ic, ((W - s) // 2, (H - s) // 2), mk); c.save(out + f'launch/{W}x{H}.png', optimize=True)
