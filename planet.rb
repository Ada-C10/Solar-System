require 'pry'

class Planet

# helper method
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
# construstor
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)

    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end
#instance method
  def summary
    return "#{@name} is #{@color} and weighs #{@mass_kg} and is #{distance_from_sun_km} km away from the sun. A fun fact about #{@name} is: #{fun_fact}"
  end
end
