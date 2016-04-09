// Input: Number of sides on the die
// Output: Random number between 1 and the number of sides on the die
// Steps:
// => DEFINE FUNCTION to roll a die with the number of sides as an argument
// => Print an error if the sides are < 1
// => Output a random number when the die is rolled


function roll_die(sides) {
  if (sides < 1) {
    throw "No such thing as sideless dice";
  }
  else if (sides >= 1) {
    return Math.floor((Math.random() * sides) + 1);
  }
}

console.log(roll_die(10))

//What concepts did you solidify in working on this challenge?
//  Functions and their arguments. Also the difference between classes and functions.
//
//What was the most difficult part of this challenge?
//   The most difficult part of this challenge was conceding to the 'random' method.      I wanted a cleaner way to just return a random number in a range like in Ruby.
//
//Was your pseudocode different from the Ruby version? What was the same and what was different?
//  My pseudocode was about the same. The first step is different because instead of declaring a new instance of a class, I am defining a function with an argument.