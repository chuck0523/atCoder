function Main(input) {
  input = input[0];
  if(input === '1') {
    console.log('ABC');
  } else if(input === '2'){
    console.log('chokudai');
  }

}

Main(require("fs").readFileSync("/dev/stdin", "utf8"));
