#Wave 1


# Load Planet into pry:
# $ pry -r ./planet.rb

class Planet #Each instance of this class will keep track of information about a single planet.
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary #summrizes planet's attributes 
    return "#{@name} is #{@color} in color, weights #{@mass_kg} and its located #{@distance_from_sun_km} from the sun! Did you know this planet #{@fun_fact}? "
  end
end
