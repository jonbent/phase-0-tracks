require_relative 'game'

describe Hangman do
	let (:game) { game.new }  
	it "shows your progress" do
		expect(game.win_game).to eq "_____"
	end

end