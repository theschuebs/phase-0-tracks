// <------RELEASE 1 FIND A KEY-VALUE MATCH --------->

// write a function that takes two objects and checks to see 
// if the objects share at least one key-value pair. 
// 	(You'll keep adding to this file, so we suggest grouping functions 
// 		at the top and testing at the bottom of the file.) 
// If we called your function with {name: "Steven", age: 54} 
// and {name: "Tamir", age: 54}, the function would return true, 
// because at least one key-value pair matches between the two objects. 
// If no pairs match (and keep in mind that the two objects may not even have any of the same keys),
//  the function should return false. To make your life easier, 
//  don't worry about whether a property is a string ('age') or an identifier name (age). 
//  Those can be considered equivalent. 
//Add some driver code that tests both outcomes of your function.


















// <------RELEASE 0 FIND THE LONGEST WORD --------->
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

var phrases = ["hi there", "cool", "how long will this take me", "a"];
var characters = 0;
var longestPhrase;

	for(var i=0; i < phrases.length; i++){
    if(phrases[i].length > characters){
        var characters = phrases[i].length;
        longestPhrase = phrases[i];
    }      
} 
console.log(longestPhrase);
