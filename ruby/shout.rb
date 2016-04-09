# module Shout

# 	def self.yell_angrily(words)
# 		p words + "!!!" + " :( "
# 	end

# 	def self.yelling_happliy(words)
# 		p words + "!" + " :-) "
# 	end

# end

# Shout.yell_angrily("Boooo")
# Shout.yelling_happliy("I am learning about modules")

module Shout
	def yell_angrily(words)
		p words + "!!!" + " :-( "
	end

	def make_me_wanna(words)
		puts "You know you make me wanna #{words}!"
	end
end

class TheIsleyBrothers
	include Shout
end

class SmallChild
	include Shout
end

theIsleyBrothers = TheIsleyBrothers.new
theIsleyBrothers.make_me_wanna("SHOUT")
theIsleyBrothers.yell_angrily("The song is over")

smallChild = SmallChild.new
smallChild.yell_angrily("Booooo")
smallChild.make_me_wanna("SHOUT! Now wai-a-ait a minute")