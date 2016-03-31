// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
//var myName = "Alec";
//myName = myName + " Hendrickson";

//prompt("What is your favorite food?")
//alert("Hey! That's my favorite too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
//FizzBuzz
//Print numbers 1 - 100
//If number is divisible by 3 only, replace it with "Fizz"
//If number is divisible by 5 only, replace it with "Buzz"
//If number is divisible by 3 & 5, replace it with "FizzBuzz"
var counter = 1;
while (counter <= 100) {
    if (counter % 3 == 0 && counter % 5 == 0) {
      console.log("FizzBuzz");
    }
    else if (counter % 3 == 0) {
      console.log("Fizz");
    }
    else if (counter % 5 == 0) {
      console.log("Buzz");
    }
    else {
      console.log(counter);
    }
    counter += 1;
}

// Functions

// Complete the `minimum` exercise.
function minimum(num1, num2) {
  return min(num1, num2);
}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  name: "Alec Hendrickson",
  age: 22,
  threeFavFoods: "Salmon, biscuits, waffles",
  quirk: "I have a personal library of > 150 books",
}
console.log(me);
