# Info about a single planet
class Planet

  # Helper method. attr_reader allows for reading but not writing
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  # Constructor method
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name.capitalize
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "#{@name} is a #{@color} planet, whose mass is #{@mass_kg}kg and #{@distance_from_sun_km}km from the sun. Fun fact: #{@fun_fact}."
  end

end
