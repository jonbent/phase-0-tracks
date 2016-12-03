# module Shout
# 	def self.yell_angrily(words)
#     	words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words.upcase + " <3"
# 	end
# end

# Shout.yelling_happily("hahaha")
# Shout.yell_angrily("gosh darn it")

module Shout
	def yell_angrily(words)
    words + "!!!" + " :("
	end
	def yell_happily(words)
		words.upcase + " <3"
	end
end

class Humans
	include Shout
end

class Ants
	include Shout
end

human = Humans.new
human.yell_angrily("hello")
human.yell_happily("hello")

ant = Ants.new
ant.yell_angrily("I'm an ant and you can't hear me but I'm yelling anyways")
ant.yell_happily("I'm an ant and you can't hear me but I'm yelling anyways")