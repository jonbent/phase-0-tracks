require_relative 'game'

describe Hangman do
	let (:game) { game.new }  
	it "shows your progress" do
		current_guess = "hello"
		expect(game.win_game).to eq nil
	end

end