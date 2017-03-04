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
    puts @gender = gender
    puts @entnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    puts @age = rand(140)
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
  # def age(int)
  #  puts  @age = int
  # end 


  def gender(change_gender)
  @gender = change_gender
  end  

  # def ethnicity
  #   @ethnicity
  # end  
 end 

# santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santa =  Santa.new(example_genders.sample, example_ethnicities.sample)
  # santa.age(rand(140))
  puts "------"
end

# driver code
# arnold = Santa.new("agender","black")
# arnold.get_mad_at("Rudolph")
# santas << arnold

# p santas

# arnold.gender("bigender")

# p santas
# p arnold.age(rand(140))
# p arnold.celebrate_birthday
# p arnold.speak



