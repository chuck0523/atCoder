// JSでのIO処理準備
var lines     = [];
var readline  = require('readline').createInterface(process.stdin, process.stdout);

// 入力値の数値化
var parseInt10 = function(elem) {
  return parseInt(elem, 10);
}
var toInt = function(line) {
  var intArray = line.split(' ').map(parseInt10);
  if(intArray.length === 1) {
    return intArray[0];
  } else {
    return intArray;
  }
};

// 設定情報
var settings = {};
var defineRule = function(index, data, vars) {
  settings[index] = {};
  for(var i = 0; i < vars.length; i += 1) {
    settings[index][vars[i]] = data[i];
  }
};

// テンプレここまで

// 問題に即した設定定数
var RESULT, TEMP, LENGTH;

// 入力値の加工
var calculate = function(data) {
  // ここに処理
};

// main
readline.on('line', function(line) {
  line = toInt(line); // 入力値の数値化
  lines.push(line);

  // 処理内容は入力回数に依存
  switch(lines.length) {
    // 初期設定
    case '設定条件':
    defineRule(1, line, ['times', 'people']);
    break;

    // 最終処理
    case '終了条件':
    console.log(RESULT); // 最終出力
    process.exit(0); // 処理の終了
    break;

    // 途中処置
    default:
    calculate(line);
    break;
  }
});
