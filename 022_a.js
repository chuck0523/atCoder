function Main(input) {

  var input = input.split('\n');
  var data = input[0].split(' ');
  var days = data[0], lightest = data[1], heaviest = data[2];

  var gloryDays = 0;
  var weight = Number(input[1]);
  if(lightest <= weight && weight <= heaviest) {
    gloryDays += 1;
  }
  for(var i = 2; i <= days; i += 1) {
    weight += Number(input[i]);
    if(lightest <= weight && weight <= heaviest) {
      gloryDays += 1;
    }
  }
  console.log(gloryDays);
}

Main(require("fs").readFileSync("/dev/stdin", "utf8"));
