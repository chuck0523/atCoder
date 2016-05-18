function toInt(array) {
  for(var i = 0; i < array.length; i += 1) {
    array[i].split(' ').map(function(elem) { return parseInt(elem, 10)})
  }
  return array;
}
