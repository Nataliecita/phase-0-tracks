# Virus Predictor

# I worked on this challenge [with: Natalie Ruiz].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# What is 'require_relative' and 'require', what are the differences?
# Require Relative - Relative path to the file we are using to test out our code.
# Require - Ruby directories that are not built inside but can be accessed outside of the program.
require_relative 'state_data'

class VirusPredictor

  # Method initiazlizes our class and prepares any attributes made within.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    # @virus_effects = virus_effects
  end
  # Calling Predicted_deaths method and Speed_of_spread method
  def virus_effects(population_density, population, state)
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private
  # Method predicted_deaths will take in 3 params this method is private and passed through virus effects. if/else statement calculating the number of deaths, the larger the area is the more deaths are calcuated.
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # Speed is set at 0
  # The greater the population the spread will cover in the "x" amount of months.
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state




STATE_DATA.each do |state, state_info|
  current_state = VirusPredictor.new(state, state_info[:population_density], state_info[:population])
  current_state.virus_effects
 end

# states.each do |x|
#   x.virus_effects
# end




# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects