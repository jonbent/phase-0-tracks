require 'sqlite3'

database = SQLite3::Database.new("weight.db")
database.results_as_hash = true

puts "Please insert your user number."
user_id = gets.chomp

database.execute("SELECT * FROM user_weight WHERE id = #{user_id}") do |info|
	user = info['name']
	puts "Welcome back #{user}, please enter your new weight"
	old_weight = info['weight']
	new_weight = gets.chomp.to_f
	weight_loss = old_weight - new_weight
	database.execute("UPDATE user_weight SET weight = #{new_weight} WHERE id = #{user_id}")
	p "your current weight is #{new_weight}, and you have lost #{weight_loss}lbs."
end

