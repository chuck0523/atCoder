function Main(input) {

  var input = input.split('\n');
  var edges = input[1].split(' ');
  var intervals = input[3].split(' ');
  intervals.push(edges[0]);
  intervals.push(edges[1]);

  var visited = {};
  for(var i = 0; i < intervals.length; i += 1) {
    if(visited[intervals[i]]) {
      console.log('NO');
      return;
    } else {
      visited[intervals[i]] = true;
    }
  }
  console.log('YES');
}

Main(require("fs").readFileSync("/dev/stdin", "utf8"));
