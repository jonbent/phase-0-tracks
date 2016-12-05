# game class
class Hangman
	attr_reader :empty_answer_array
	def initialize(word)
		@guess_list = []
		@word = word
		@empty_answer_array = []
		@word.length.times do
			@empty_answer_array << "_"
		end
		@answer_array = word.split('')
		@current_guess = empty_answer_array.join('')
		@guesses = 6
	end
  	def progress
    	p @current_guess
  	end
  	def lose_game
    	p "wow you lost... you're pathetic"
    	p "These were your guesses: #{@guess_list.join(", ")}"
  	end
  
  	def win_game
   		p "You guessed the word! You're so cool!"
   		p "These were your guesses: #{@guess_list.join(", ")}"
  	end
  
  	def switch_duplicates
    	@word.length.times do |letter|
     		if @guess == @answer_array[letter]
          		@empty_answer_array[letter] = @guess
      		end
    	end
  	end

  	def correct_letter
  		if @answer_array.include?(@guess)
	    	switch_duplicates
	    	@current_guess = @empty_answer_array.join(" ")
	    	progress
	    
	    else
	    	@guesses -= 1
	    	p "WRONG! you have #{@guesses} guesses left"
	    	@current_guess = @empty_answer_array.join(" ")
	    	progress
	    end
  	end

  	def fix_current_guess
  		fixed = @current_guess.split(' ')
  		fixed.join('')

  	end
  	def true_or_false
	  	if @guess == @word
	    	@guesses = 0
	  	elsif !@guess_list.include?(@guess)
	    	@guess_list << @guess
	    	correct_letter
		else 
	    	p "well you already entered that, so try again."
	    	@current_guess
	  	end
  	end
  	def win_or_lose
  		if fix_current_guess == @word || @guess == @word
		  	win_game
		else
		  	lose_game
		  	current_guess
		end
  	end

  	def game
  		until @guesses == 0 || fix_current_guess == @word
			@guess = gets.chomp
  			true_or_false
  		end
  	end
end
# user interface
# hangman gives 6 guesses traditionally.
puts "Welcome to hangman, please insert word for partner to guess"
word = gets.chomp
print "\e[2J\e[f"
puts "Please hand me to your partner now"
puts "Welcome to hangman, you get 6 guesses and you have to guess my word!"
game = Hangman.new(word)
game.game
game.win_or_lose