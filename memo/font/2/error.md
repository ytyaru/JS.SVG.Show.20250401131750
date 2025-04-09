# 実行時エラー

```sh
fontconv font.svg font.woff2
```

```sh
/usr/local/lib/node_modules/fontconv/node_modules/svg2ttf/lib/svg.js:18
    if (pathElem.hasAttribute('d')) {
                 ^

TypeError: Cannot read properties of undefined (reading 'hasAttribute')
    at getGlyph (/usr/local/lib/node_modules/fontconv/node_modules/svg2ttf/lib/svg.js:18:18)
    at /usr/local/lib/node_modules/fontconv/node_modules/svg2ttf/lib/svg.js:160:17
    at /usr/local/lib/node_modules/fontconv/node_modules/lodash/lodash.js:4943:15
    at Function.forEach (/usr/local/lib/node_modules/fontconv/node_modules/lodash/lodash.js:9410:14)
    at Object.load (/usr/local/lib/node_modules/fontconv/node_modules/svg2ttf/lib/svg.js:159:5)
    at svg2ttf (/usr/local/lib/node_modules/fontconv/node_modules/svg2ttf/index.js:22:21)
    at getFont (file:///usr/local/lib/node_modules/fontconv/esm/mod.js:62:21)
    at convert (file:///usr/local/lib/node_modules/fontconv/esm/mod.js:227:24)
    at main (file:///usr/local/lib/node_modules/fontconv/esm/cli.js:33:27)
    at file:///usr/local/lib/node_modules/fontconv/esm/cli.js:41:1

Node.js v18.10.0
```

　グリフ内の`<path>`要素が取得できなかったように見える。

　どうやらfontconvではSVGスプライトからフォントを作成できないらしい。

