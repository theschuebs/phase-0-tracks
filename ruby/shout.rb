#<--------------Assignment done as Nighthawk --------------->
# Release 3 Convert a standalone module to a mixin

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
  	words + "!" + " :)"
  end
end

class Man
	include Shout
end

class Robot
	include Shout
end

man = Man.new
p man.yell_angrily("Why are you waking me up?")
p man.yell_happily("I got a raise")

robot = Robot.new
p robot.yell_angrily("Keep the sprinkler away from me")
p robot.yell_happily("Hi, I'm Baymax. I am your personal healthcare assistant")

#<--------------Assignment done as Pocket Gopher --------------->
# # module Shout

# # 	def self.yell_angrily(words)
# # 		p words + "!!!" + " :( "
# # 	end

# # 	def self.yelling_happliy(words)
# # 		p words + "!" + " :-) "
# # 	end

# # end

# # Shout.yell_angrily("Boooo")
# # Shout.yelling_happliy("I am learning about modules")

# module Shout
# 	def yell_angrily(words)
# 		p words + "!!!" + " :-( "
# 	end

# 	def make_me_wanna(words)
# 		puts "You know you make me wanna #{words}!"
# 	end
# end

# class TheIsleyBrothers
# 	include Shout
# end

# class SmallChild
# 	include Shout
# end

# theIsleyBrothers = TheIsleyBrothers.new
# theIsleyBrothers.make_me_wanna("SHOUT")
# theIsleyBrothers.yell_angrily("The song is over")

# smallChild = SmallChild.new
# smallChild.yell_angrily("Booooo")
# smallChild.make_me_wanna("SHOUT! Now wai-a-ait a minute")