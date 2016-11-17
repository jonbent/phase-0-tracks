
def screen
	puts "How many employees will be processed?"
	employees = Integer(gets.chomp)
	while employees > 0

		puts "Name?"
		employee_name = gets.chomp

		puts "Age?"
		age = gets.chomp

		puts "Year of birth?"
		yob = gets.chomp

		puts "Likes garlic bread?"
		garlic = gets.chomp

		puts "Need health insurance?"
		immortal = gets.chomp

		check_age = false
		if 2016 - yob.to_i == age.to_i
			check_age = true
		else
			check_age = false
		end
		vampire = false
		puts "Allergies?"
		until vampire == true
		input = gets.chomp
			if input == "done"
				vampire = true
			elsif input == "sunshine"
				puts "Probably a vampire"
				vampire = true
			end
		end
=begin
		wolves_like_sunshine = true
		wolves_like_garlic = true
		vampires_like_sunshine = false
		vampires_like_garlic = false

		if !vampires_like_garlic

			puts "true"
		else
			puts "false"
		end
=end


		if employee_name == "Drake Cula" || "Tu Fang"
			puts "Definitely a vampire."
		elsif check_age && (garlic || immortal)
			puts "Probably not a vampire."
		elsif !(check_age && garlic && immortal)
			puts "Almost certainly a vampire."
		elsif !check_age && !(garlic || immortal)
			puts "Probably a vampire."
		else 
			puts "Results inconclusive."
		end
		employees -=1 
	end
end 

screen

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

#To run the following code it will have to be implemented in. 
#This is purely for fulfilling the requirements of this challenge

def practice_program
	practice_count = 10
	while practice_count != 0
		puts practice_count
		practice_count -= 1
	end
	puts "give me a number from 1-100"
	practice_variable = gets.chomp
	practice_variable = practice_variable.to_i
	if 20 <= practice_variable
		puts "you're way off"
	elsif practice_variable == 1
		puts "You got it"
	else
		puts "You're close"
	end
end

