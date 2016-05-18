var lines     = [];
var readline  = require('readline').createInterface(process.stdin, process.stdout);

var toInt = function(num) { return parseInt(num, 10); }
var A/* child */, B/* adult */, C/* discount */, K/* discount condition */,
    S/* child size */, T/* adult size */;
readline.on('line', function(line) {
  lines.push(line);
  if(lines.length === 1) {
    var first = line.split(' ');
    A = toInt(first[0]), B = toInt(first[1]),
    C = toInt(first[2]), K = toInt(first[3]);
  }
  if(lines.length === 2) {
    var second = line.split(' ');
    S = toInt(second[0]), T = toInt(second[1]);

    var sum = A * S + B * T;
    if(S + T >= K) sum -= (S + T) * C;
    console.log(sum);
    process.exit(0);
  }
});
