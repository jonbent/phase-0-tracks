
def screen
	puts "How many employees will be processed?"
	employees = Integer(gets.chomp)
	while employees > 0

		puts "what is your name?"
		name = gets

		puts "How old are you?"
		age = gets

		puts "What year were you born?"
		yob = gets

		puts "Our company cafeteria serves garlic bread, do you want some?"
		garlic = gets

		puts "Will you be needing health insurance?"
		immortal = gets
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

#Doesnt work unless I have variables to give it

		if age && (garlic || immortal)
			puts "Probably not a vampire."
		elsif !(age && garlic && immortal)
			puts "Almost certainly a vampire."
		elsif !age && !(garlic || immortal)
			puts "Probably a vampire."
		elsif name ="Drake Cula" || "Tu Fang"
			puts "Definitely a vampire."
		else 
			puts "Results inconclusive."
		end
		employees -=1 
	end
end 
def allergies 
	vampire = false
	puts "tell me your allergies."
	until vampire == true
	input = gets.chomp
		if input == "done"
			vampire = true
			break
		elsif input == "sunshine"
			puts "Probably a vampire"
			vampire = true
		end
	end
end


allergies
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

practice_program