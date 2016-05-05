// // <-----------NIGHTHAWK VERSION------------->

//----RELEASE 0----

var colors = ["red", "blue", "green", "brown"]
var names = ["Ed", "Champion", "Bud", "Tomm"]

colors.push("white")
console.log(colors)
names.push("Lilly")
console.log(names)


//----RELEASE 1-----

// The keys of your object => horse names
// The values of your object => colors. 
// Should support any number of colors/horses

var colors = ["red", "blue", "green", "brown"]

var names = ["Ed", "Champion", "Bud", "Tomm"]


var horses = {}
for (var i = 0; i < names.length; i++) {
  names[i] + " " + colors[i];
  horses[names[i]] = colors[i];
}

console.log(horses)

// Write a constructor function for a car. Give it a few different properties of various data types, 
//including at least one function. Demonstrate that your function works by creating a few cars with it.

//Declare car function with a few properties (model, year, hybrid)

function Car(model, year, hybrid, speed) {
  
  //Create "this" dog 
  console.log("Our new car:", this);

  //Add attributes similar to Ruby instance variables using this.name
  this.model = model;
  this.year = year;
  this.hybrid = hybrid;
  this.speed = speed;

  //Create a function to accelerate from 0 to 100 mph in 5 seconds
  this.accelerate = function() {console.log("This car can accelerate from 0 to" + " " + this.speed + " " + "mph in 5 seconds"); };
  
  //Car initialization message
  console.log("CAR INITIALIZATION COMPLETE");
  
}

// Create an empty array to store the cars
var carModels = []

//Add driver code 
console.log("Let's build a car...")
var car = new Car("Toyota", 1995, false, 25);
console.log(car);
car.accelerate();
console.log("=================");
carModels.push(car)

console.log("Let's build a another car...")
var anotherCar = new Car("Ford", 2014, true, 45);
console.log(anotherCar);
anotherCar.accelerate();
console.log("This" + " " + anotherCar.model + " " + "can run without fueling for 150 miles.")
console.log("=================");
carModels.push(anotherCar)

console.log("Let's build a car...")
var newCar = new Car("Lincoln", 2000, false, 35);
console.log(newCar);
newCar.accelerate();
console.log("=================");
carModels.push(newCar)

// Print all the cars in the array
console.log(carModels)

























// <-----------POCKET GOPHER VERSION------------->

// //Create two new arrays

// var color = ['blue', 'red', 'yellow', 'black'];
// var horses = ['Hank', "Sam", "Erika", "Jen"];
// // color.push("White");
// // horses.push("Jake");
// // console.log(color);
// // console.log(horses);

// // Create an object matching horse and color
// var object = {Hank: 'blue', Sam: 'red', Erika: 'yellow', Jen: 'black'};
// console.log(object)

// var object_new = {horses[0]: color[0]}
// console.log(object_new)

// //Release 2 Build an Object with a Constructor

// function Car(color, speed, isGoodCar) {
//   console.log("Our new car:", this);
  
//   this.color = color;
//   this.speed = speed;
//   this.isGoodCar = isGoodCar;
  
//   this.sounds = function() { console.log("Vroooom"); };
  
//   console.log("CAR INITIALIZATION COMPLETE");
  
// }

// var anotherCar = new Car("blue", 50, true);
// console.log(anotherCar);
// console.log("Our car can roar:");
// anotherCar.sounds();
// console.log("----");

// var thirdCar = new Car("red", 100, false);
// console.log(thirdCar);
// console.log("Our car can soar:");
// anotherCar.sounds();
// console.log("----");