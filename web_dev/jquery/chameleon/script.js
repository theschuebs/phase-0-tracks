console.log("The script is running!");

$('#lizard-photo').on('click', function(){
	$('#lizard-photo').slideUp(600);
});

$('button').on('click', function(){
	$('button').hide();
});


$('li').on('click', function(){
	$('li').slideToggle(800);
});

//Next learning goal- How to show everything I've just hidden.
// $('li').on('click', function(){
// 	$('li').show();
// });
 
function addLizardSlime() {
	$('body').addClass('slime');
};

function greet(firstName){
	$('h1').html('Hello ' + firstName );
};


greet('Erika')
addLizardSlime()