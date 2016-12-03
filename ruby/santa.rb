class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @age = rand(140)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    puts "This santa is #{@age} years old, indentifies as a #{@ethnicity} #{@gender}, and its favorite reindeers in order are #{@reindeer_ranking.join(", ")}"
    
  end
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end
  
  def celebrate_birthday
    @age += 1
  end
  
  def get_mad_at(reindeer)
    @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer)))
  end
  
  def gender=(new_gender)
    @gender = new_gender
  end
end
possible_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
possible_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
x = 0 
# make 100 santas 
100.times do
  santa = Santa.new(possible_genders.sample, possible_ethnicities.sample)
end
# santas[0].celebrate_birthday
# santas[0].get_mad_at("Rudolph")
# santas[0].gender = "transgender"
# santas[0].age

