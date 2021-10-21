const readline = require('readline');
const reader = readline.createInterface({
  input: process.stdin, 
  output: process.stdout
}); 

// function completionCallback(sum) {
//   console.log(`Total sum: ${sum}`
// )};
function completionCallback(sum){
  console.log(`${sum}`);
}


function addNumbers(sum = 0, numsLeft = 5, completionCallback){
    if (numsLeft > 0){
      console.log("inside if")
      reader.question("Enter a number:", function(num){
        userInput = parseInt(num); 
        sum += userInput; 
        numsLeft -= 1; 
        addNumbers(sum, numsLeft, completionCallback);
      }); 

      

    } else if (numsLeft === 0){
      reader.close();
      console.log("inside else")
      return completionCallback(sum); 
    }
}

addNumbers(20, 5, completionCallback);


// reader.question("Enter a number:", function (num) {
//   console.log(`this is the ${num}`);
//   reader.close();
// });


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