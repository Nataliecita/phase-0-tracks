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

// write a function that takes two objects and checks to see if the objects(aka hashes) share at least one key-value pair

// if no pair match, it should return false

// declare function that takes two objects

// find method that looks at each key, so two for loops.. if one matches with the other we want to save it and thn look at that value inside of it










// driver code for release 0 
yas = ["long phrase","longest phrase","longer phrase"];

console.log(long(yas));


