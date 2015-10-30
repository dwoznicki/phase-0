// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Mark Janzer
// This challenge took me [1] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
//
// Block to input votes
// Input: no arguments taken, needs votes object
// Output: VoteCount with each officer number of votes correlated to them in the correct office.

// Create a for loop to iterate through votes object
//   Create a for loop to iterate through the individual vote.
//     IF voteCount[current office][current candidate] exists
//       then voteCount[current office][current candidate] += 1
//     ELSE
//       voteCount[current office][current candidate] = 1
//     END
//   END
// END

// Block to count votes for each office and return the max (aka the winner);
// Input: needs voteCount
// Output: Winner

// Create a for loop to iterate through voteCount object
//   Create a for loop to iterate through each office object
//     Find max for voteCount[office][candidate], set candidate as property to officers[office]
//   END
// END

// __________________________________________
// Initial Solution

// for (var voter in votes) {
//   for (var office in votes[voter]) {
//     if (votes[voter][office] in voteCount[office]) {
//       voteCount[office][votes[voter][office]] += 1;
//     } else {
//       voteCount[office][votes[voter][office]] = 1;
//     }
//   }
// }


// for (var position in voteCount) {
//   var max = 0;
//   var topRunner = "";
//   for (var candidate in voteCount[position]) {
//     if (voteCount[position][candidate] > max) {
//       max = voteCount[position][candidate];
//       topRunner = candidate;
//     }
//   }
//   officers[position] = topRunner;
// }


// __________________________________________
// Refactored Solution

for (var voter in votes) {
  for (var office in votes[voter]) {
    var candidateChoice = votes[voter][office];
    if (candidateChoice in voteCount[office]) {
      voteCount[office][candidateChoice] += 1;
    } else {
      voteCount[office][candidateChoice] = 1;
    }
  }
}


for (var position in voteCount) {
  var max = 0;
  var topRunner = "";
  for (var candidate in voteCount[position]) {
    var numberOfVotes = voteCount[position][candidate];
    if (numberOfVotes > max) {
      max = numberOfVotes;
      topRunner = candidate;
    }
  }
  officers[position] = topRunner;
}



/*
// __________________________________________
// Reflection
What did you learn about iterating over nested objects in JavaScript?

  We learned that you have to use a for..in loop to iterate over an object.
  Regular for loops won't work since the object doesn't have a numbered
  index. You also have to nest one inside the other.

Were you able to find useful methods to help you with this?

  We didn't really find much this time. Well, we did use the if..in
  statement which checks if A exists in B for `if (A in B)`. This is
  a bit like the includes? method in Ruby. It helped us check whether
  we needed to add a person's name to an office or just incredment
  the value of their name.

What concepts were solidified in the process of working through this challenge?

  This helped me understand nested objects a lot better. It was a
  challenging problem, and we really had to be specific with our variable
  names so we didn't get confused about what was what.

// __________________________________________
// Test Code:  Do not alter code below this line.
*/

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)