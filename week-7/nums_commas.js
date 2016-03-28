// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Shaun Sweet.

// Pseudocode
// Input: Integer as argument
// Output: Comma-separated integer as a string
//        Turn integer to array
//        Reverse array
//        Go through array, add each number to new array
//        Every third number, add a comma
//        Reverse new array and turn to string

// Initial Solution


// function CommaSeparated(integer) {
//   var input = integer.toString().split("").reverse();
//   var new_array = [];
//   if (integer.toString().length <= 3){
//     return integer;
//   }
//   for (var i = 0;input.length > i;i ++){
// //     take each element from input and put it into a new array
//  console.log(new_array);
//     if (i % 3 == 0 && i != 0) {
//       new_array.push(",");

//     }
//     new_array.push(input[i]);
//   }
//   return new_array.reverse().join("");
// }



// Refactored Solution
function CommaSeparated(integer) {
  var input = integer.toString().split("").reverse();
  var new_array = [];
  if (integer.toString().length <= 3){
    return integer;
  }
  for (var i = 0;input.length > i;i++){
//     take each element from input and put it into a new array
 console.log(new_array);
    if (i % 3 == 0 && i != 0) {
      new_array.push(",");

    }
    new_array.push(input[i]);
  }
  return new_array.reverse().join("");
}


[1,2,3,",",1,2,3,1,",",1,3,3]
function comma_separated(numba) {
  if (numba.toString().length < 4) {
    return numba;
  }
  input = numba.toString().split("");
  // i need to loop through the array and every third spot
  // i need to insert a comma
  var count = 0;
  for (var i = 3; numba.toString().length > i; i += 3){
    input.splice(-i - count,0,","); // -i just makes i negative 3 etc..
    count ++;
    console.log(input);
  }
  return input.join("");
}




// Your Own Tests (OPTIONAL)

console.log(CommaSeparated(123211134))


// Reflection
//**What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?**
//  I approached the problem in much the same way. The only difference for me in this challenge was the syntax.
//**What did you learn about iterating over arrays in JavaScript?**
//  There are a few of the same methods as in Ruby.
//**What was different about solving this problem in JavaScript?**
//  Nothing was glaringly different.
//**What built-in methods did you find to incorporate in your refactored solution?**
//  length, toString, split, reverse, splice, push and join.
