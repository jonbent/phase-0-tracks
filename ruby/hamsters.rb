require 'rubygems'
	require 'active_support'
puts "What's your hamster's name?"
hamster_name = gets.chomp
puts "Rate how loud your hamster is from 1-10."
noise_volume = gets.chomp
noise_volume = noise_volume.to_i
puts "Fur color?"
fur_color = gets.chomp
puts "Candidate for adoption?"
adoptable = gets.chomp

if adoptable.to_s == "true"
	true
elsif adoptable.to_s == "false"
	false
end


puts "How old is your hamster?"
estimated_age = gets.chomp
if estimated_age == ""
    estimated_age = nil
else
    estimated_age = estimated_age.to_i
end
puts "Age: #{estimated_age}"
puts "Name: #{hamster_name}" 
puts "noise volume: #{noise_volume}"
puts "Color: #{fur_color}"
puts "adoptable: #{adoptable}"
