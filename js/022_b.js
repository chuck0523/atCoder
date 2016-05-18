function Main(input) {
  var input = input.split('\n').map(function(x) {return parseInt(x, 10)});
  input.shift();

  var bloomed = 0;
  var flowers = {};

  for(var i = 0; i < input.length; i += 1) {
    if(flowers[input[i]]) {
      bloomed += 1;
    } else {
      flowers[input[i]] = true;
    }
  }
  console.log(bloomed);
}

Main(require("fs").readFileSync("/dev/stdin", "utf8"));
