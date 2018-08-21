require 'pry'
class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end
end

  def summary
   return "#{@name} is a #{@color} planet that weighs #{@mass_kg}. It's #{@distance_from_sun_km} km away from the sun. Fun fact about #{@name}: #{@fun_fact}"
 end
binding.pry
