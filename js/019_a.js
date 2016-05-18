function Main(input) {
  num = input.split('\n')[0].split(' ').map(Number).sort(function(a, b) {
    return a - b;
  })[1];
  console.log(num);
}

Main(require("fs").readFileSync("/dev/stdin", "utf8"));
