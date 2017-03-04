module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
   end 

   def self.yelling_happily(words)
    words + "!!!" + " :) woohooo"
   end 
end  


p Shout.yell_angrily("bruh")
p Shout.yelling_happily("Go get em' kid")
