var color = ["blue", "red", "green", "yellow"]; 

var name = ["Felicia", "Jason", "Logan", "Tootsie"] ;

// console.log(colors);
// console.log(names);

color.push("garnet");

name.push("Edward");


var horses =  {};



name.forEach(function(value,index){
  horses[value] = color[index];
});

// console.log(horses);


var engine = [6, 8];

function Car(name, color, engine) {
  this.name = name;
  this.color = color;
  this.engine = engine;

  this.speed = function() {console.log("VROOOOOOOOM!"); };
  console.log("Initialization");
}



console.log(Car)
var anotherCar = new Car("Red", "Super red", engine[1]);

console.log(anotherCar)
anotherCar.speed();

var car2 = new Car(name[3], color[2], engine[0]);

console.log(car2);