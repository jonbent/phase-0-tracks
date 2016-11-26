# get spy's name

# split spy's name, reverse it, then join it back together, might be messy use irb first.
# define encrypting method
# inside, define consonates and vowels methods, ended up using arrays instead, seemed easier than my previous try with the encrypt program


def encrypt
	quit = 0
	counter = 0
	fake_names = []
	spys_real_name = []
	puts "spy's name? Type quit to end"
	until quit == 'quit'
		spys_name = gets.chomp
		spys_real_name << spys_name
		quit = spys_name
		spys_name_length = spys_name.length
		spys_name = spys_name.split.reverse
		spys_name = spys_name.join(' ').split('')
		vowels = ['a', 'e', 'i', 'o', 'u']
		consonates = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'z']
		x = 0
		number_vowels = 5
		while spys_name_length > 0
			spys_name[x] = spys_name[x].downcase
			if quit == "quit"
				break
			elsif vowels.include?(spys_name[x])
				vowel_position = vowels.index(spys_name[x])
				vowel_position += 1
				if vowel_position == 5
					vowel_position = 0
			end
			spys_name[x] = vowels[vowel_position]
				
			elsif consonates.include?(spys_name[x])
				consonate_position = consonates.index(spys_name[x])
				consonate_position += 1
				if consonate_position == 20
					consonate_position = 0
			end
			spys_name[x] = consonates[consonate_position]
			elsif spys_name == ' '
				spys_name = ' '
				# keep it that way
			end
			x += 1
			spys_name_length -= 1
		end
		spys_name = spys_name.join.split(' ').each {|word| word.capitalize!}
		spys_name = spys_name.join(" ")
		fake_names << spys_name
	end
	fake_names.delete("Quit")
	spys_real_name.delete("quit")
	
	spys_real_name.each do |name|
		puts "#{fake_names[counter]} is really #{name}"
		counter += 1
	end

end


encrypt

