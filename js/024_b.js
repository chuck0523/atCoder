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
var DOOR_OPEN_GROSS_TIME = 0,
    LAST_ENTERED_TIME;

// 入力値の加工
var alterLastEntered = function(enteredAt) {
  LAST_ENTERED_TIME = enteredAt;
};
var accumulatePeriod = function(enteredAt) {
  var openPeriod =
    enteredAt - LAST_ENTERED_TIME < settings['1']['T'] ?
    enteredAt - LAST_ENTERED_TIME :
    settings['1']['T'];

  DOOR_OPEN_GROSS_TIME += openPeriod;
};

// main
readline.on('line', function(line) {
  line = toInt(line); // 入力値の数値化
  lines.push(line);

  // 処理内容は入力回数に依存
  switch(lines.length) {
    // 初期設定
    case 1:
    defineRule(1, line, ['N', 'T']);
    break;

    // 初回処理
    case 2:
    alterLastEntered(line);
    break;

    // 最終処理
    case settings['1']['N']+1:
    accumulatePeriod(line);
    DOOR_OPEN_GROSS_TIME += settings['1']['T'];

    console.log(DOOR_OPEN_GROSS_TIME); // 最終出力
    process.exit(0); // 処理の終了
    break;

    // 途中処置
    default:
    accumulatePeriod(line);
    alterLastEntered(line);
    break;
  }
});
