function Main(input) {
  tens = Math.floor(input / 10);
  ones = input - (tens * 10)
  console.log(tens + ones);
}

Main(require("fs").readFileSync("/dev/stdin", "utf8"));
