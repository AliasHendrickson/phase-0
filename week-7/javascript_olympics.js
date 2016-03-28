// JavaScript Olympics

// I paired with Lyudmila Arinich on this challenge.

// This challenge took me [2] hours.


// Warm Up


// Bulk Up

/*
  var athlete1 = {
    name: "Daria Domracheva",
    event: "skiing",
    };

  var athlete2 = {
    name: "Shawn White",
    event: "snowboarding",
    };

  var athleteArray = [athlete1, athlete2]

  athleteArray.forEach(function(athlete) {
    athlete["win"] = athlete.name + " won " + athlete.event + "!";
  });

console.log(athleteArray)*/

// Jumble your words
/*var string = "!sdrow ruoy elbmuJ";

function ReverseString(string) {
  return string.split("").reverse().join("")}

console.log(ReverseString(string));*/
// 2,4,6,8
/*
function EvensArray(value) {
  return value%2 === 0;
}
var filtered = [12, 5, 8, 130, 44].filter(EvensArray);
console.log(filtered)
*/
// "We built this city"

function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!");

console.log(michaelPhelps.constructor === Athlete);
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote);

//Reflection

//**What JavaScript knowledge did you solidify in this challenge?**
//  Different types of functions and the way to define properties.
//**What are constructor functions?**
//  Constructor functions are functions that create object types. They can be used to create many new instances of a type of object.
//**How are constructors different from Ruby classes (in your research)?**
//  A constructor function creates a hash-like collection of attributes that we want to imbue the new object with, whereas classes take objects and do things with them using methods inside the class.