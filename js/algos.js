// <------RELEASE 0 FIND THE LONGEST WORD --------->

function longestWordSort(phrases) {
	
var characters = 0;
var longestPhrase;
	
	for(var i=0; i < phrases.length; i++){
    if(phrases[i].length > characters){
        characters = phrases[i].length;
        longestPhrase = phrases[i];
    }      
} 
return longestPhrase;
}


// <------RELEASE 1 FIND A KEY-VALUE MATCH ---------> 

var sharePair = function(object1, object2) {
	 for(var key in object1) {
    if (object1[key] == object2[key]){
    return true;	
    }
	}
	return false;
};


// <------RELEASE 2 Generate Random Test Data --------->
var wordArray = [];
var arrayBuilder = function(int){
	
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	
		for (var i = 0; i < int; i++){
			var randomNumber = Math.floor((Math.random() * 10) + 1);
			wordArray.push(alphabet.substring(0, randomNumber));
		}
		return wordArray
}

//DRIVER CODE

//RELEASE 1
console.log(longestWordSort(["hi there", "cool", "how long will this take me", "a"]));

//RELEASE 2
console.log(sharePair({name: "Steven", age: 54}, {name: "Tamir", age: 54}))
console.log(sharePair({name: "Lee", age: 50}, {name: "Tamir", age: 54}))
console.log(sharePair({name: "Jill", age: 20}, {name: "Jill", age: 20}))
console.log(sharePair({name: "Steven"}, {name: "Steven"}))

//RELEASE 3
// console.log(arrayBuilder(3))

for (i = 1; i <=10; i++){
	console.log(arrayBuilder(1)
	console.log(longestWordSort(wordArray))
}

//NEED TO REFACTOR
	//10 arrays are generated and it's adding one word into each array at a time. This results in a total of 10 arrays. 
	//Each array DOES return the longest word. However, I want the arrays to have a random amount of words in it each
	//of the 10 times, not incrementing the words by one. 

	//I'd like to shuffle the string letters and make sure all the letters are being used randomly within the random strings.





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

// <------RELEASE 1 FIND A KEY-VALUE MATCH --------->

// write a function
		 // two objects
		 // checks to see if the objects share at least one key-value pair. 
		 //If we called your function with {name: "Steven", age: 54} 
		//and {name: "Tamir", age: 54}, the function would return true,

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
