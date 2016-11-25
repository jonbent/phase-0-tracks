# first things first, gotta create the hash, with all the keys, could feed directly into hash after each input, but would get messy.



info = {
	:name => "",
	:age => 0,
	:children => 0,
	:phone_number => 0,
	:blue => "",
	:lazy => true
}
# ask for name
puts "Name:"
info[:name] = gets.chomp
# ask for age
puts "Age:"
info[:age] = gets.chomp.to_i
# ask for children
puts "Number of children:"
info[:children] = gets.chomp.to_i
# ask for phone number
puts "Phone number:"
info[:phone_number] = gets.chomp.to_i
# ask for shade of blue preference
puts "Favorite shade of blue:"
info[:blue] = gets.chomp
# get a boolean
puts "Do you like standing?"
info[:lazy] = gets.chomp
if info[:lazy] == "yes"
	info[:lazy] = true
else 
	info[:lazy] = false
end
# mistakes
puts "Anything to edit? none to end."
edit = gets.chomp

# need if loop to add logic if they have something to edit
# probably another to see what user wants to edit and what to do with the user input.
if edit == "none"
	p info
else 
	puts "what would you like to edit? For last option type last"
	edit_input = gets.chomp
	if edit_input.capitalize == "Name"
		puts "Name:"
		info[:name] = gets.chomp
	elsif edit_input.capitalize == "Age"
		puts "Age:"
		info[:age] = gets.chomp.to_i
	elsif edit_input.capitalize == "Number of children"
		puts "Number of children:"
		info[:children] = gets.chomp.to_i
	elsif edit_input.capitalize == "Phone number"
		puts "Phone number:"
		info[:phone_number] = gets.chomp.to_i
	elsif edit_input.capitalize == "Favorite shade of blue"
		puts "Favorite shade of blue:"
		info[:blue] = gets.chomp
	elsif edit_input == "last"
		puts "Do you like standing?"
		info[:lazy] = gets.chomp
		if info[:lazy] == "yes"
			info[:lazy] = true
		else 
			info[:lazy] = false
		end
	end
	p info
end

