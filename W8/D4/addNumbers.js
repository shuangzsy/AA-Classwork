const readline = require('readline');
const reader = readline.createInterface({
  input: process.stdin, 
  output: process.stdout
}); 

// reader.question("Enter a number:", function addNumbers(sum = 0, numsLeft, completionCallback){
//   if (numsLeft > 0){
//     //prompt user for the inputs
//     let userInput = ${num};
//     addNumbers(sum, numsLeft, completionCallback)
//   }
// })

reader.question("Enter a number:", function (num) {
  console.log(`this is the ${num}`);
  reader.close();
});


// const readline = require('readline');

// const reader = readline.createInterface({
//   // it's okay if this part is magic; it just says that we want to
//   // 1. output the prompt to the standard output (console)
//   // 2. read input from the standard input (again, console)

//   input: process.stdin,
//   output: process.stdout
// });

// reader.question("What is your name?", function (answer) {
//   console.log(`Hello ${answer}!`);
// });

// console.log("Last program line");