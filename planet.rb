
require 'pry'

class Planet
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def summary
    return "#{@name} is a #{@color} planet that is #{@distance_from_sun_km}km from the sun. #{@name}'s mass is #{@mass_kg}kg. Fun fact: #{@fun_fact}"
  end
  
end
