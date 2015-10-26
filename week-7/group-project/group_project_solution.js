/*
=====User Stories=====
1. As a user, I want the function "sum" to take a list of numbers, add them
all together, and give me back the final sum. It should work for lists with
both an even and odd length.

2. As a user, I want the function "mean" to take a list of numbers, add them
all together, divide by how many numbers there are in the list, and give back
the answer. It should give back the average of the list. It should work for
lists with both an even and odd length.

3. As a user, I want the function "median" to take a list of numbers, find
the middle value (or median value), and give it back. You can assume the list
is sorted from smallest to largest. It should work for lists with both an
even and odd length.

=====Pseudocode=====
DECLARE a function called 'sum' that takes in an argument of an array of numbers called "numbers"
  DEFINE a new variable called "sum" and set its value equal to zero
  FOR each element in the array "numbers" do the following
    Add the value of the current element to the variable "sum"
  END the loop
  RETURN the value of "sum"
END the function called 'sum'
DECLARE a function called 'mean' that takes in an argument of an array of numbers called "numbers"
  DEFINE a new variable called "sum" and set its value equal to zero
  FOR each element in the array "numbers" do the following
    Add the value of the current element to the variable "sum"
  END the loop
  RETURN the value of "sum" divided by the number of elements in the "numbers" array
END the function called 'mean'
DECLARE a function called 'median' that takes in an argument of a sorted array of numbers called "numbers"
  IF the number of elements in the "numbers" array is odd
    RETURN the value of the element in the exact middle of the "numbers" array
  ELSE
    RETURN the value of adding the two middle elements of the array and divide that sum by two
  END the conditional
END the function called 'median'
*/
//======Initial Solution=====
/*
function sum(numbers){
var total = 0
  for(var i = 0; i < numbers.length; i++){
   total = total + numbers[i];
}
    console.log("Total: " + total);
}
sum([1,2,3])
function mean(numbers){
  var sum = 0;
  for(var i = 0; i < numbers.length; i++){
  sum = sum + numbers[i];
  }
  console.log("Mean: " + sum/numbers.length);
  }
mean([1,2,3])
function median(numbers){
  var num_med = 0
  var x = 0;
  var y = 0;
  for(var i = 0; i < numbers.length; i++){
    if(numbers.length%2 != 0){
      x = (numbers.length%2);
      num_med = numbers[x];}
    else{
      x = (numbers.length%2)
      y = (numbers.length%2 + 1);
      num_med = numbers[x]+","+numbers[y];
      }
  }
  console.log("Median: "+ num_med);
}
median([1,2,3,4])*/


//=====Refactored Solution=====
function sum(numbers){
var total = 0
  for(var i = 0; i < numbers.length; i++){
   total = total + numbers[i];
  }
    return total
}

function mean(numbers){
  var sum = 0;
  for(var i = 0; i < numbers.length; i++){
  sum += numbers[i];
  }
  return (sum/numbers.length)
}

function median(numbers){
  numbers.sort( function(a,b) {return a - b;} );
  var half = Math.floor(numbers.length/2);

  if(numbers.length % 2){
    return numbers[half];
  } else {
      return (numbers[half-1] + numbers[half]) / 2.0;
  }
}