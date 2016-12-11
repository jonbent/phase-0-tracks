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
var longest_program = new Longest(array);

longest_program.choose_longest();

array = ["123", "12345", "1234", "1"]
longest_program = new Longest(array);
longest_program.choose_longest();


function sharing_is_caring(object_1, object_2) {
  this.object_1 = object_1;
  this.object_2 = object_2;
	
	this.check_objects = function(){
	  if (this.object_1.age == this.object_2.age){
	    return true;
	  }else if(this.object_1.name == this.object_2.name){
	    return true;
	  }else{
	    return false;
	  }
	 
	};
}

object_checker = new sharing_is_caring({name: "Steven", age: 54}, {name: "Tamir", age: 54});
object_checker.check_objects();

object_checker = new sharing_is_caring({name: "Steven", age: 26}, {name: "Tamir", age: 54});
object_checker.check_objects();

object_checker = new sharing_is_caring({name: "Steven", age: 26}, {name: "Steven", age: 54});
object_checker.check_objects();