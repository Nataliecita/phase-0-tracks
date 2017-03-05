# Research... difference between mixin version of class and module vs modules that halve self

# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#    end 

#    def self.yelling_happily(words)
#     words + "!!!" + " :) woohooo"
#    end 
# end  


# p Shout.yell_angrily("bruh")
# p Shout.yelling_happily("Go get em' kid")


module Shout
	def shout(words)
		puts "#{words}!".upcase
	end	
end	

class Angry_sibling
	include Shout
end	

class Coach
	include Shout
end	

# Drive code 
sibling = Angry_sibling.new
sibling.shout("leave me alone")

coach = Coach.new
coach.shout("hustle, hustle")
