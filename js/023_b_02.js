var lines     = [];
var readline  = require('readline').createInterface(process.stdin, process.stdout);

readline.on('line', function(line) {
  lines.push(line);
  if(lines.length === 2) {
    var size = parseInt(lines[0]), str = lines[1];

    // 文字順
    var order = [['a', 'b', 'c'],
                 ['b', 'c', 'a'],
                 ['c', 'a', 'b']];
    // エラー除外
    if(size % 2 === 0) {
     console.log(-1);
     return;
    }

    // 語順走査
    for(var i = 0; i < size; i += 1) {
      if(str[i] !== order[size % 3][i % 3]) {
        console.log(-1);
        return;
      }
    }
    console.log(Math.floor(i / 2));
    process.exit(0);
  }
});
