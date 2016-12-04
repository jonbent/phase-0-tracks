# game class
class Hangman
	attr_accessor :current_guess, :guess
	def initialize(input, empty_answer, empty_answer_array, answer_array)
		@input = input
		@current_guess = empty_answer
		@empty_answer_array = empty_answer_array
		@answer_array = answer_array
	end
  	def progress
    	p @current_guess
  	end
  	def lose_game
    	puts "wow you lost... you're pathetic"
  	end
  
  	def win_game
   		puts "You guessed the word! You're so cool!"
  	end
  
  	def switch_duplicates
    	@input.length.times do |letter|
     		if @guess == @answer_array[letter]
          		@empty_answer_array[letter] = @guess
      		end
    	end
  	end
  
  	def end_game
   		true
  	end
end
# user interface
# hangman gives 6 guesses traditionally.
puts "Welcome to hangman, please insert word for partner to guess"
word = gets.chomp
print "\e[2J\e[f"
empty_answer_array = []
word.length.times do
	empty_answer_array << "_"
end
empty_answer = empty_answer_array.join('')
answer_array = word.split('')
guesses = 6
puts "Please hand me to your partner now"
puts "Welcome to hangman, you get 6 guesses and you have to guess my word!"
game = Hangman.new(word, empty_answer, empty_answer_array, answer_array)
guess_list = []
position = []
until guesses == 0 || empty_answer_array.join('') == word
	game.guess = gets.chomp
  	if game.guess == word
    	guesses = 0
  	elsif !guess_list.include?(game.guess)
    	guess_list << game.guess
	    if answer_array.include?(game.guess)
	    	game.switch_duplicates
	    	game.current_guess = empty_answer_array.join(" ")
	    	game.progress
	    
	    else
	    	guesses -=1
	    	puts "WRONG! you have #{guesses} guesses left"
	    	game.progress
	    end
	else 
    	puts "well you already entered that, so try again."
    	game.current_guess
  	end
end

if empty_answer_array.join('') == word || game.guess == word
  	game.win_game
else
  	game.lose_game
end