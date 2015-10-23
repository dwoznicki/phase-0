// JavaScript Olympics

// I paired Daniel W on this challenge.

// This challenge took me [#] hours.


// Warm Up
//name, height, sport, and quote

var daniel = {
  name: "Daniel",
  height: 6,
  sport: "soccer",
  quote: "Hello there"
};
var danielle ={
  name: "Danielle",
  height: "5.8",
  sport: "running",
  quote: "Bye there"
};

// Bulk Up   x = "age"; person[x]
var array = [daniel, danielle];
var bulkUp = function(array){
  for(var x = 0; x <array.length; x++ ){
    var person = array[x];
    person.win = person.name + " won the " + person.sport + " event!";
  }
};
bulkUp(array);
console.log(danielle.win);


// Jumble your words
var jumble = function(string){
 return string.split("").reverse().join("");
};
console.log(jumble("Some string"));


// 2,4,6,8
var evens = function(array){
 return array % 2 == 0;
};
array = [1,2,3,4,5,7,8,9,10];
console.log(array.filter(evens));


// "We built this city"
function Athlete(name, age , sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};



var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
var danielle = new Athlete(danielle.name,30, danielle.sport, danielle.quote);
console.log(danielle)
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

/*
// Reflection
What JavaScript knowledge did you solidify in this challenge?

  I have a better understanding of several JS methods and objects now. The
  filter iterator was really easy to use, and seems really useful, for
  example. It was also interesting to use constructor functions.

What are constructor functions?

  Constructor functions are very similar to Ruby classes. That is, it's an
  object that can store both variables and other functions inside it. Like a
  Ruby class, you have to instantiate instances of the constructor function
  to use it.

How are constructors different from Ruby classes (in your research)?

  Practically speaking, JS constructors and Ruby classes fill a very similar
  role. The main difference I found is in inheritence. Ruby classes will
  inherit properties and methods from their parent classes, whereas you need to add a .prototype tag to an object in JS for it to inherit things. Also,
  it seems that the JavaScript constructor actually makes new objects, unlike
  a literal object which seems more akin to a Ruby hash. I'm not sure that a
  Ruby class actually makes new objects when you make instance variables and
  methods.
*/