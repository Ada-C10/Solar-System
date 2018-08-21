require "pry"

class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_facts

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_facts)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_facts = fun_facts
  end


# removed @
  def summary
    summary = "
    - Name: #{name}
    - Color: #{color}
    - Mass (in kg): #{mass_kg}
    - Distance From Sun (in km): #{distance_from_sun_km}
    - Fun Fact: #{fun_facts}"
    return summary
  end
end

# TODO:
# OPTIONAL: Add error checking to your constructor.
#
# Both mass_kg and distance_from_sun_km must be numbers that are greater than zero.
# What should your program do if they aren't?
# How will you make sure this behavior works?
# OPTIONAL: Add minitest tests for Planet.
