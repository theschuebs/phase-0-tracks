
// Write a function 
// This function will take an array of words or phrases
// return the longest word in the array
// If we gave your function the array of ["long phrase","longest phrase","longer phrase"], 
// it would return "longest phrase"

// Figure out how long the first phrase is.
// Compare the first phrase to the second phrase.
// if the phrase is longer, it is now the longest phrase and compares the next phrase to the new longest phrase.
// if it's not longer, then the original phrase is the longest and the next phrase is compared to that.
// Once all words have been compared, return the longest phrase. 

var phrases = ["hi there", "cool", "how long will this take me"];
var characters = 0;
var longestPhrase;

	for(var i=0; i < phrases.length; i++){
    if(phrases[i].length > characters){
        var characters = phrases[i].length;
        longestPhrase = phrases[i];
    }      
} 
console.log(longestPhrase);
