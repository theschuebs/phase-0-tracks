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

// <------RELEASE 1 FIND A KEY-VALUE MATCH --------->

// write a function
		 // two objects
		 // checks to see if the objects share at least one key-value pair. 

//(You'll keep adding to this file, so we suggest grouping functions 
//at the top and testing at the bottom of the file.) 
//If we called your function with {name: "Steven", age: 54} 
//and {name: "Tamir", age: 54}, the function would return true, 
//because at least one key-value pair matches between the two objects. 
//If no pairs match (and keep in mind that the two objects may not even have any of the same keys),
//the function should return false. To make your life easier, 
//don't worry about whether a property is a string ('age') or an identifier name (age). 
//Those can be considered equivalent. 
//Add some driver code that tests both outcomes of your function.


// <------RELEASE 2 Generate Random Test Data --------->

// Write a function 
		//  takes an integer for length, 
		//  builds and returns an array of strings of the given length. 

// So if we ran your function with an argument of 3, we would get an array 
// of 3 random words back (the words don't have to be actual sensical English words -- "nnnnfph" totally counts). 
// The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. 
// (This involves a new trick, generating a random number, that you'll have to look up, 
// 	but the solution on how to do so is relatively straightforward.)
// Add driver code that does the following 10 times: generates an array, prints the array, 
// feeds the array to your "longest word" function, and prints the result.
