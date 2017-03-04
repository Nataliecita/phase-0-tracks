class Santa

  attr_reader :age, :ethnicity
  attr_accessor :gender


  def speak
    puts "Ho, ho, ho! Haaaappy holidays"
  end 

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end  

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @entnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end 


  def celebrate_birthday
    @age = @age + 1
  end

  def get_mad_at(reindeer_name)
   position = @reindeer_ranking.rindex(reindeer_name)
   @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(position))
  end  

  # # setter method
  # def gender(new_gender)
  #   @gender = new_gender
  # end 

  # # getter methods
  # def age
  #   @age
  # end 

  # def ethnicity
  #   @ethnicity
  # end  
   
 end 

santas = []
 charlie = Santa.new("female","white")

 santas << charlie

p santas
charlie.gender = "male"
p santas



 # santa.speak

 # santa.eat_milk_and_cookies("Raisin oatmeal")

 # DRIVER CODE
#  santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
#   p santas
#   puts "------"
# end

