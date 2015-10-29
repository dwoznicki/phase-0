/*
Gradebook from Names and Scores
I worked on this challenge [by myself, with:]
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.
var gradebook = {};
for(var value in students) {
  gradebook[students[value]] = {};
}
var index = 0
for(var grades in gradebook) {
  gradebook[grades].testScores = scores[index];
  index ++
}
gradebook.addScore = function (name, score) {
  gradebook[name].testScores.push(score)
}


gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores)
}

var average = function(array) {
  return array.reduce(function(sum, value) {
    return sum + value; }) / array.length
}




// __________________________________________
// Refactored Solution

// Adds students and test scores to gradebook
var gradebook = {};
for(var i = 0; i < students.length; i++) {
  gradebook[students[i]] = {};
  gradebook[students[i]].testScores = scores[i]
}
// Adds new test score to student record
gradebook.addScore = function (name, score) {
  gradebook[name].testScores.push(score)
}
// Returns average score for given student
gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores)
}
var average = function(array) {
  return array.reduce(sumOfElements) / array.length
}
var sumOfElements = function(sum, value) {
  return sum + value; }



/*
// __________________________________________
// Reflect
What did you learn about adding functions to objects?

  I learned that you can add functions using dot notation. I guess this
  wasn't so much a discovery as it was a reinforcement. It's good to keep
  in mind, though.

How did you iterate over nested arrays in JavaScript?

  I don't believe we ended up iterating over the test scores inside of the
  scores array. If we had needed to, I believe we would have used a nested
  for loop: one to iterate over each array, and another to iterate over each
  element in the array.

Were there any new methods you were able to incorporate? If so, what were they and how did they work?

  Yes! We knew the perfect iterating method for getting an average in Ruby
  was #reduce. We were bemoaning the lack of it in JS, when my partner
  suggested we look online and see if we could find an equivilant. It turns
  out that JavaScript has #reduce as well! It's not quite as convenient
  as Ruby, where you can simply pass in the symbole :+ to tell it you want
  the sum of each element, but it's still quite useful.

*/
// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)