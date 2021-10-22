const readline = require("readline");

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

// Write this first.
function askIfGreaterThan(el1, el2, callback) {
  // Prompt user to tell us whether el1 > el2; pass true back to the
   // callback if true; else false.
  reader.question(`Is ${el1} > ${el2} ?   `, function (response){
    if(response === 'yes'){
      callback(true);
    }else{
      callback(false);
    }
    //is this handled in line 51? 
    // reader.close();
  });
}

// askIfGreaterThan(5, 10, a => console.log(a));

// Once you're done testing askIfGreaterThan with dummy arguments, write this.
function innerBubbleSortLoop(arr, i, madeAnySwaps = false, outerBubbleSortLoop) {
  
  // Do an "async loop":
  function loopStep() {
    // (i < arr.length - 1)
    if (i === arr.length -1){
      outerBubbleSortLoop(madeAnySwaps);
    }
    //call askIfGreaterThan 
      madeAnySwaps = askIfGreaterThan(arr[i], arr[i+1], loopstep)
      if(madeAnySwaps){[arr[i], arr[i + 1]] = [arr[i + 1], arr[i]] 
        return true;}
      else{
        return false;};
      //swap values
      i++; 
  }; 
  loopStep();

  // need a something to track to see if on our last iteration we swapped anything
  // 1. If (i == arr.length - 1), call outerBubbleSortLoop, letting it
  //    know whether any swap was made. 
  }

  
  //users decide which element is larger. 
  //if yes, we are not done
  //if no, we are done
  

  //user prompt 
  // 2. Else, use `askIfGreaterThan` to compare `arr[i]` and `arr[i +
  //    1]`. Swap if necessary. 
  
  //    Call `innerBubbleSortLoop` again to
  //    continue the inner loop. You'll want to increment i for the
  //    next call, and possibly switch madeAnySwaps if you did swap.
}

// Once you're done testing innerBubbleSortLoop, write outerBubbleSortLoop.
// Once you're done testing outerBubbleSortLoop, write absurdBubbleSort.

function absurdBubbleSort(arr, sortCompletionCallback) {
  function outerBubbleSortLoop(madeAnySwaps) {
    // Begin an inner loop if you made any swaps. Otherwise, call
    // `sortCompletionCallback`.
    if (madeAnySwaps === true){
      innerBubbleSortLoop(arr, 0, false, outerBubbleSortLoop);
    }else {
      sortCompletionCallback();
    }
  }

  // Kick the first outer loop off, starting `madeAnySwaps` as true.
  outerBubbleSortLoop(true); 
}

//sortCompletionCallback, just print the array 

absurdBubbleSort([3, 2, 1], function (arr) {
  console.log("Sorted array: " + JSON.stringify(arr));
  reader.close();
});