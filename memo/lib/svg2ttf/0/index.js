const fs = require('fs');
const svg2ttf = require('svg2ttf');

const ttf = svg2ttf(fs.readFileSync('font.svg', 'utf8'), {});
fs.writeFileSync('font.ttf', new Buffer(ttf.buffer));
