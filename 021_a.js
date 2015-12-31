function Main(input) {

  var input = input.split('\n');
  var num = input[0];
  var nums = [];
  if(num % 2 !== 0) {
    nums.push(1);
  }
  while(num > 1) {
    num = num - 2;
    nums.push(2);
  }
  console.log(nums.length);
  for(var i = 0; i < nums.length; i += 1) {
    console.log(nums[i]);
  }
}

Main(require("fs").readFileSync("/dev/stdin", "utf8"));
