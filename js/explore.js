// input: string
// steps: change to array, reverse elements in array, revert to string
// output: string

// input: string
// steps: change to array, reverse elements in array, revert to string
// output: string

function switcheroo(string){
  var switched_word = "";
	for (var i = string.length; i > -1; i--){
		letter = string[i];
		switched_word += letter;
	}
	return switched_word.replace("undefined", "");
}
// i can't for the life of my find out why it says 'undefined' when i output the 'switched_word' variable, I initialized it and everything, it just adds that undefined no matter what i do."
switched = switcheroo("hello");

if (switched == "olleh"){
  console.log(switched)
  console.log("wow that matches.");
}
else{
  console.log(switched)
  console.log("that doesn't match");
}
