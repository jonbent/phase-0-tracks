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


function Sharing_is_caring(object_1, object_2) {
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

var object_checker = new sharing_is_caring({name: "Steven", age: 54}, {name: "Tamir", age: 54});
object_checker.check_objects();

object_checker = new sharing_is_caring({name: "Steven", age: 26}, {name: "Tamir", age: 54});
object_checker.check_objects();

object_checker = new sharing_is_caring({name: "Steven", age: 26}, {name: "Steven", age: 54});
object_checker.check_objects();

function Random_words(number_of_words) {
  this.number_of_words = number_of_words;
  this.alphabet = "abcdefghijklmnopqrstuvwxyz";
  this.random_letter_index = Math.floor((Math.random() * 25));
  this.random_word_length = Math.floor((Math.random() * 7) + 1);
  this.random_string = "";
  
  this.make_random_word = function(){
    for (var o = 0; o < this.number_of_words; o++ ){
      this.random_word = "";
      for (var i = 0; i < this.random_word_length; i++ ){
        this.random_word += this.alphabet[this.random_word_length];
        this.random_word_length = Math.floor((Math.random() * 7) + 1);
      
      }
      this.random_string += this.random_word + " ";
    }
  
    console.log(this.random_string);
  };
  
}


var word_generator = new Random_words(3);
word_generator.make_random_word();

word_generator = new Random_words(25);
word_generator.make_random_word();

word_generator = new Random_words(7);
word_generator.make_random_word();

for (x = 0; x < 10; x++){
  word_generator = new Random_words(5);
  word_generator.make_random_word();
  arrays = word_generator.random_string.split(" ")
  console.log(arrays)
  longest_program = new Longest(word_generator.random_string.split(" "));
  longest_program.choose_longest();
  
}