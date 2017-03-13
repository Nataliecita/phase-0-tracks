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

function keyvalue (object1, object2) {
  var obj1 = Object.keys(object1);
  var obj2 = Object.keys(object2);

  for( var i = 0; i < obj1.length; i++ ){
    for (var j = 0; j < obj2.length; j++) {
     if  (obj1[i] == obj2[j]) {
       console.log("it matches");
     }
    }
  }
}



one = {0: 'a', 1: 'b', 2: 'c'}
two = {3: 'd', 4: 'e', 2: 'f'}


keyvalue(one,two)







// driver code for release 0 
yas = ["long phrase","longest phrase","longer phrase"];

console.log(long(yas));


