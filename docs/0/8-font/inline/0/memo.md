# SVGフォントからwoff2に変換する

```sh
sudo npm install fontconv -g
```
```sh
fontconv font.svg font.woff2
```

## woff2をBase64に変換する

```sh
base64 -w0 font.woff2
```

