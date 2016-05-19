console.log("The script is running!");

function addPinkBorder(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.border = "2px solid pink";
}

var photo = document.getElementById("lizard-photo");
photo.addEventListener("click", addPinkBorder);

function changeFont(event) {
  event.target.style.fontFamily = "Comic Sans MS";
}

var unordered = document.getElementsByTagName('li')
	listItemOne = unordered[0]
	listItemTwo = unordered[1]
	listItemOne.addEventListener("mouseover", changeFont);
	listItemTwo.addEventListener("mouseover", changeFont);
//How can I make this more DRY?

function multiplyLizard() {
    var photo = document.getElementById("lizard-photo");
    var cln = photo.cloneNode(true);
    document.body.appendChild(cln);
}
