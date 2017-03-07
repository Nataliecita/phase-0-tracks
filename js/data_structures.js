var colors = ["blue", "red", "green", "yellow"]; 

var names = ["Felicia", "Jason", "Logan", "Tootsie"] ;

// console.log(colors);
// console.log(names);

colors.push("garnet");

names.push("Edward");


var horses =  {};



names.forEach(function(value,index){
  horses[value] = colors[index];
});

console.log(horses);
