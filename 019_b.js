function Main(input) {
  var current_char;
  var serial = 1;
  var str = input.replace('\n', '')+' ';
  var converted_str = '';

  current_char = str[0];
  for(var i = 1; i < str.length; i += 1) {
    if(str[i] === current_char) {
      serial += 1;
    } else {
      converted_str += current_char + serial;
      current_char = str[i];
      serial = 1;
    }
  }
  console.log(converted_str);
}

Main(require("fs").readFileSync("/dev/stdin", "utf8"));
