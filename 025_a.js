// 短め回答
var lines     = [];
var readline  = require('readline').createInterface(process.stdin, process.stdout);

readline.on('line', function(line) {
  lines.push(line);
  if(lines.length === 2) {
    var chars = , index = lines[1] - 1;
    console.log(chars[Math.floor(index / 5)] + chars[index % 5]);
    process.exit(0);
  }
});


// 素直回答
// var
//   lines     = [],
//   readline  = require('readline').createInterface(process.stdin, process.stdout);
//
// readline.on('line', function(line) {
//   lines.push(line);
//   if(lines.length === 2) {
//     var chars = lines[0], charIndex = lines[1];
//     for(var i = 0; i < chars.length; i++) {
//       for(var j = 0; j < chars.length; j++) {
//         var loopIndex = i * 5 + j + 1;
//         if(loopIndex == charIndex ) {
//           console.log(chars[i] + chars[j]);
//         }
//       }
//     }
//     process.exit(0);
//   }
// });
