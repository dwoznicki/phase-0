// VALIDATE A CREDIT CARD

// Pseudocode
// =================================================================
/*
Input: a 16 digit integer
Output: a boolean, true or false

Split integer into digits
  Convert integer to string
  Add each character as element of an array
Check if integer is 16 digits
  IF the length of the array !== 16
    return an error
  End
Double the digit at every even index
  FOR each element
    IF the array index%2 is 0
      double associated element
    End
  End
Add all the digits together
  IF any element has 2 digits
    Split element (into array)
  End
  FOR each element in the array
    IF the element is an array
      Sum the elements and convert to an integer
    End
    Sum the elements
  End
IF the sum%10 is 0, true
ELSE, false
*/

// Initial Solution
// =================================================================

// function cardValidator(number) {
//   number = number.toString().split('');
//   if (number.length !== 16) {
//     console.log("Error: number must be 16 digits long");
//     return false;
//   }
//   for (var i = 0; i < number.length; i++) {
//     if (i % 2 == 0) {
//       number[i] = Number(number[i] *= 2).toString();
//     }
//     if (number[i].length > 1) {
//       number[i] = number[i].split('')
//       number[i] = number[i].reduce(sum);
//     }
//   }
//   var total = number.reduce(sum);
//   if (total % 2 == 0) { return true }
//   else { return false }

// }
// function sum(a, b) { return Number(a) + Number(b) };

// Refactored Solution
// =================================================================

function cardValidator(number) {
  number = number.toString().split('');
  if (number.length !== 16) {
    console.log("Error: number must be 16 digits long");
    return false;
  };
  for (var i = 0; i < number.length; i++) {
    if (i % 2 == 0) {
      number[i] = Number(number[i] *= 2).toString();
    };
    if (number[i].length > 1) {
      number[i] = number[i].split('').reduce(sum);
    };
  };
  var total = number.reduce(sum);
  return total % 2 == 0 ? true : false;
};

function sum(a, b) { return Number(a) + Number(b) };

console.log(cardValidator(4408041234567901));

// Reflection
// =================================================================
/*
What concepts did you solidify in working on this challenge?

  This was good practice in working with the differences between JS and Ruby.
  I think I have a better understanding of the differences and similarities
  between the two languages. They're more similar than I initially thought.

What was the most difficult part of this challenge?

  The most difficult part of this challenge was getting the #reduce method
  to work properly. I'm spoiled by Ruby which has some predefined methods
  (such as :+) to work with #reduce. In JS, you have to define the function
  yourself.

Did you solve the problem in a new way this time?

  My JS solution is a little different from the original Ruby challenge.
  The original challenge had us make a credit card class and define the
  validation functions inside of it. Here, I just made a function that
  takes a number as an argument, and tells you if it's a valid credit card
  number or not. I also had to work around some methods that Ruby has but
  JS does not, such as #flatten.

Was your pseudocode different from the Ruby version? What was the same and what was different?

  My pseudocode was a bit different in JS. I put a bit more detail into this
  pseudocode because I don't know as many built in methods. As it turns out,
  #reduce is available in JS, so that made my solution a bit easier.

*/