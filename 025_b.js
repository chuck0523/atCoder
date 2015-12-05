var lines     = [];
var readline  = require('readline').createInterface(process.stdin, process.stdout);
var log   = function(x) {console.log(x);};
var parse = function(num) { return parseInt(num, 10); };
var cnt, A, B;
var move, dis = 0, pos = 0;

readline.on('line', function(line) {
  lines.push(line);
  if(lines.length === 1) {
    data = line.split(' ');
    cnt = data[0];
    A = parse(data[1]);
    B = parse(data[2]);
  } else if(lines.length > 1) {
    move = line.split(' ');
    move[1] = parse(move[1]);
    dis = move[1] > B ? B : move[1] < A ? A : move[1];
    move[0] === 'East' ? pos += dis : pos -= dis;
  }

  if(lines.length - 1 == cnt) {
    pos > 0 ? log('East ' + pos) : pos < 0 ? log('West ' + Math.abs(pos)) : log(pos);
    process.exit(0);
  }
});
