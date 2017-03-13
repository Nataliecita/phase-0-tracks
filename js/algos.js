// write a function that takes an array of words or phrases and returns the longest word or phrase in the array. S


// pass in array
// declare empty variable

// if the current word is longer than the previous word, update that variable, otherwise chck the next one. Iterate through everything in the array
function long(array) {
  longest_word = "";
  for (var i = 0; i < array.length; i++) {
    if (array[i].length > longest_word.length)
    {
      longest_word = array[i];
    }
  }
  return longest_word
}

yas = ["long phrase","longest phrase","longer phrase"];

console.log(long(yas));