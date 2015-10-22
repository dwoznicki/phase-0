
/*
Your previous Ruby content is preserved below:

// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Mark Janzer

// Pseudocode
Input: Integer
Output: String with commas.

Define a function seperateComma that takes an integer as an argument
  Set integer to array
  Define solutions array
  While integer length is four or greater.
    Pop off last three characters and add them to a solutions array
    Add "," to front of solutions array
  Concatenate original array with the solution array (original first, solution second).
  Return solution as a string
End
*/


// Initial Solution
function separateComma(integer) {
  integer = integer.toString().split("");
  var solutions = [];
  while (integer.length >= 4) {
    solutions = (integer.slice(-3)).concat(solutions);
    integer = integer.slice(0, -3);
    solutions.unshift(",");
  };
  integer = integer.concat(solutions).join("");
  return integer
}

console.log(separateComma(47155504));

// Refactored Solution
function separateComma(integer) {
  integer = integer.toString().split("");
  var solutions = [];
  while (integer.length >= 4) {
    solutions = (integer.splice(-3)).concat(solutions);
    solutions.unshift(",");
  };

  return integer.concat(solutions).join("");
}



// Your Own Tests (OPTIONAL)

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (typeof separateComma === 'function'),
  "separateComma should be a function.",
  "1. "
)

assert (
  (separateComma(1234) === '1,234'),
  "Expected '1,234'",
  "2. "
)
// ===Doesn't work in node, but works in Chrome browser.===
// assert (
//   (separateComma(5678).includes(",")),
//   "Expected separateComma to return string with comma.",
//   "3. "
// )

assert (
  (separateComma(12) === '12'),
  "Expected '12'",
  "4. "
)

// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

  At first, it definitely felt a bit limiting. But my partner actually knew
  a lot about JS to begin with, so we managed to make it through without too
  much difficulty. We did have to approach the problem differently, though
  not as differently as I would have alone.

What did you learn about iterating over arrays in JavaScript?

  We actually didn't end up iterating over our array this time... But from
  what I can tell, you have to use a for loop to do it in JS. Ruby has tons
  of options for iteration, whereas JavaScript does not seem to have so many.

What was different about solving this problem in JavaScript?

  Actually, the biggest difference was probably in syntax. I made a lot of
  syntax errors while writing this that my partner had to catch me on. And
  all my errors were Ruby syntax, or forgetting a semicolon.

What built-in methods did you find to incorporate in your refactored solution?

  We looked up and found the method #splice, which does the same thing as
  #slice, but destructively. That meant we could eliminate a line from our
  initial solution. We reused a few methods that we'd already used for the
  initial solution, such as #toString, #split, and #concat.

*/