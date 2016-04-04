// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

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
    vicePresident: { Devin: 40, Hermann: 25, Zane: 2 },
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

//Your task is to go through votes and record each student's votes in voteCount. Once the votes have been tallied, assign the winners in officers.

// Pseudocode

// Test 1:
// Loop through each voter in the votes object
//  Add their vote for president to the voteCount object.
//
// Test 5:
// Find who got the most votes for President
//   Get the president part of vote count
//   Set new president and their vote count to first candidate in vote count
//   Loop through each candidate
//     If candidate's vote > current max votes
//     Candidate is new president
// Assign new president's name to officers.president
// __________________________________________
// Initial Solution
/*
for (var key in votes) {
    // skip loop if the property is from prototype
    if (!votes.hasOwnProperty(key)) continue;

    var obj = votes[key];
    for (var prop in obj) {
        // skip loop if the property is from prototype
        if(!obj.hasOwnProperty(prop)) continue;

        // your code
        alert(prop + " = " + obj[prop]);
    }
}
*/


for (var voter in votes) {
  var presVote = votes[voter].president;
  if (voteCount.president.hasOwnProperty(presVote)) {
    voteCount.president[presVote] += 1;
  } else {
    voteCount.president[presVote] = 1;
  }
}

for (var voter in votes) {
  var presVote = votes[voter].vicePresident;
  if (voteCount.vicePresident.hasOwnProperty(presVote)) {
    voteCount.vicePresident[presVote] += 1;
  } else {
    voteCount.vicePresident[presVote] = 1;
  }
}

console.log(voteCount)

for (var voter in votes) {
  var presVote = votes[voter].secretary;
  if (voteCount.secretary.hasOwnProperty(presVote)) {
    voteCount.secretary[presVote] += 1;
  } else {
    voteCount.secretary[presVote] = 1;
  }
}



for (var voter in votes) {
  var presVote = votes[voter].treasurer;
  if (voteCount.treasurer.hasOwnProperty(presVote)) {
    voteCount.treasurer[presVote] += 1;
  } else {
    voteCount.treasurer[presVote] = 1;
  }
}

// Test 5:
// Find who got the most votes for President
//   Get the president part of vote count
//   Set new president and their vote count to first candidate in vote count
//   Loop through each candidate
//     If candidate's vote > current max votes
//     Candidate is new president
// Assign new president's name to officers.president

var pres = voteCount.president;
var presName = "";
var presVotes = 0;

for (var candidate in pres) {
  if (pres[candidate] > presVotes) {
    presName = candidate;
    presVotes = pres[candidate];
  }
}

officers.president = presName;

var vp = voteCount.vicePresident;
var vpName = "";
var vpVotes = 0;

for (var candidate in vp) {
  if (vp[candidate] > vpVotes) {
    vpName = candidate;
    vpVotes = vp[candidate];
  }
}

officers.vicePresident = vpName;

var secretary = voteCount.secretary;
var secretaryName = "";
var secretaryVotes = 0;

for (var candidate in secretary) {
  if (secretary[candidate] > secretaryVotes) {
    secretaryName = candidate;
    secretaryVotes = secretary[candidate];
  }
}

officers.secretary = secretaryName;

var treas = voteCount.treasurer;
var treasName = "";
var treasVotes = 0;

for (var candidate in treas) {
  if (treas[candidate] > treasVotes) {
    treasName = candidate;
    treasVotes = treas[candidate];
  }
}

officers.treasurer = treasName;

// __________________________________________
// Refactored Solution






// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
//  I learned that sometimes it is more simple to iterate over properties   //      separately rather than iterate through every property with one loop.
//
// Were you able to find useful methods to help you with this?
//  No. The JavaScript methods are not as obvious as the Ruby methods.
//
// What concepts were solidified in the process of working through this challenge?
//  Accessing different values and properties of objects with iteration, and bracket notation vs. dot notation.




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