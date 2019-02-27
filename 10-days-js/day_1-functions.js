'use strict';

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', inputStdin => {
    inputString += inputStdin;
});

process.stdin.on('end', _ => {
    inputString = inputString.trim().split('\n').map(string => {
        return string.trim();
    });
    
    main();    
});

function readLine() {
    return inputString[currentLine++];
}

// my code, start 
function factorial(n) {
  let product = 1; 
  for (let i = n; i > 0; i--) {
    product = product * i;
  }
  return product
}
// my code, stop 

function main() {
    const n = +(readLine());
    
    console.log(factorial(n));
}