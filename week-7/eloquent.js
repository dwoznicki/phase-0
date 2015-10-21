// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var myVar = "The time is ";
console.log(myVar + "3:00.");

//Favorite food
prompt("What's your favorite food?", "");
alert("Hey! That's my favorite too!");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
Looping a Triangle
var triangle = ""
while (triangle.length < 7) {
  console.log(triangle += "#");
}
//FizzBuzz
for (var n = 1; n <= 100; n++) {
  if (n % 3 == 0 && n % 5 == 0)
    console.log("FizzBuzz");
  else if (n % 3 == 0)
    console.log("Fizz");
  else if (n % 5 == 0)
    console.log("Buzz");
  else
    console.log(n);
}
//Chess Board
var size = 8;
var board = "";
for (var row = 0; row < size; row++) {
  for (var line = 0; line < size; line++) {
    if ((row + line) % 2 == 0)
      board += " ";
    else
      board += "#";
  }
  board += "\n"
}
console.log(board);


// Functions

// Complete the `minimum` exercise.

function min(num1, num2) {
  if(num1 < num2)
    return num1;
  else
    return num2;
}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Daniel",
  age: 26,
  favoriteFoods: ["Abura Soba", "Bulgogi", "Shio Tsukemen"],
  quirk: "I love leopard geckos."
};
console.log(me.name)