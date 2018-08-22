require "pry"

class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_facts

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_facts)

    @name = name
    @color = color
    @mass_kg = mass_kg.to_f
    @distance_from_sun_km = distance_from_sun_km
    @fun_facts = fun_facts
  end

  # print out summary of a given planet instance
  def summary
    summary = "
    - Name: #{@name}
    - Color: #{@color}
    - Mass (in kg): #{@mass_kg}
    - Distance From Sun (in km): #{@distance_from_sun_km}
    - Fun Fact: #{@fun_facts}"

    #returns summary as string
    return summary
  end
end
