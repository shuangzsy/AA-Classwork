//using readline to read the number we input 
const readline = require('readline')
const reader = readline.createInterface({
  input: process.stdin, 
  output: process.stout
}); 

reader.question("Enter a number:", function addNumbers(sum, numsLet, completionCallback){})