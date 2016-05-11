
// RELEASE 4
	//write a function that takes a string as a parameter
  //define a variable so the new output has a place to live
  //set variable equal to a string
  //write a function that reverses the string and prints it to the console


function reverse(string){
  var new_string = '';
  for (var i = string.length -1; i >=0; i--)
  new_string += string[i];
	return new_string;
}

console.log(reverse('happy'));
console.log(reverse('Erika'));
console.log(reverse('party') == 'ytrap');

// !=1

//RELEASE 3 Try the thing:

// var i;

// for (i = 0; i <=10; i++) {
// 	console.log(i)
// }

// var i;

// for (i = 10; i >= 0; i--) {
// 	console.log(i)
// }

