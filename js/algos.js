function Longest(array) {
	console.log("The longest element is:");
	this.longer_object = "1";
	this.array = array;
	this.choose_longest = function() { 
	  for (var i = 0; i < this.array.length; i++) {
  		if (this.array[i].length > this.longer_object.length) {
  			this.longer_object = this.array[i];
  			this.longer_object
  		}
  	}
  	console.log(this.longer_object);
	};
}
var array = ["long phrase","longest phrase","longer phrase"];
longest_program = new Longest(array);

longest_program.choose_longest();