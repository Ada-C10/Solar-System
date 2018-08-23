# new class to be used in main.rb
# creates new planet along with details
class Planet
  # only allows you to read the value of instance variable
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  # stores 5 details about each planet
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  # summarizes the detail about the planet
  def summary
   return "#{@name.capitalize} is a #{@color} planet that weighs #{@mass_kg}. It's #{@distance_from_sun_km} km away from the sun. Fun fact about #{@name}: #{@fun_fact}"
  end
 end
