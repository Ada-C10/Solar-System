# In a file called planet.rb, create a class called Planet. Each instance of this class will keep track of
# information about a single planet
class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
    
  end

  def check_valid(mass_kg, distance_from_sun_km)
    if mass_kg <= 0 || distance_from_sun_km <= 0
      raise ArgumentError, 'values must be > 0'
    end
  end

  def summary
    "The planet #{@name} is the color #{@color} and weighs #{@mass_kg} kilograms.\
 #{@name} is #{@distance_from_sun_km} kilometers from the sun and interestingly, #{@fun_fact}."
  end
end