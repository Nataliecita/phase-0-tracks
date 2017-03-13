// create fucntion that reverses a string

// reverse through the string passed backwards and add to the empty string that will be returned at the ned




function reverse(string) {
  var new_word = "";

  for (var i = string.length - 1; i >= 0; i--) {
    new_word += string[i];
  }
  return new_word;
}

console.log(reverse("hello"))
