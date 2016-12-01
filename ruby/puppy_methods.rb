class Puppy
  def initialize
    puts "Initializing new puppy instance ..."
  end
  def fetch(toy)
    puts "I brought back the #{toy}!"
  end
  def speak(input)
    input.times do
      puts "bark bark"
    end
  end
  def roll_over
    puts "*rolls over*"
  end
  def dog_years(years)
    years_7x = years * 7 
    return years_7x
  end
  def beg
    puts "**whines"
    end
end
fido = Puppy.new
# fido.fetch("ball")
# fido.speak(2)
# fido.roll_over
# fido.dog_years(2)
# fido.beg

class Wrestlers
    #need to initialize
    def initialize
        puts "Initializing new instance"
    end
    #first instance method (a double leg is a standard wrestling technique)
    def double_leg(body_side)
        puts "Hit a double leg on his #{body_side} side"
    end
    #second instance, pushups for fun
    def push_up(times)
        x = 0
        while x < times
            puts "*does a pushup"
            x += 1
        end
    end
end

array = []
50.times do
  new_wrestler = Wrestlers.new
  array << new_wrestler
end

# array.each do |wrestler|
#   wrestler.double_leg("left")
# end

array.each do |all_times|
  all_times.push_up(1)
end