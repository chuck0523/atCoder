function Main(input) {
  nums = input.split('\n')[0].split(' ').join('');
  console.log(nums * 2);
}

Main(require("fs").readFileSync("/dev/stdin", "utf8"));
