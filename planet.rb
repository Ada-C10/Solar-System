# This the class Planet to track information
# about a single planet
class Planet

# The helper method (attr_reader) to make variables readable outside the class
attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
# Add constructor with 5 parameters saved in an instance variable
# of the same name
  def initialize (name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

# Add an instance method to Planet called summary.
# This method returns a string of a formatted description of the planet.
  def summary
     return "#{@name} whose color is #{@color}, weighs #{@mass_kg}, and is #{@distance_from_sun_km} from the sun. One of its fun facts is that it #{@fun_fact}."
  end

end
