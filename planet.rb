# WAVE 1
# define the class planet
class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_facts

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_facts)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_facts = fun_facts
  end

  def summary
    return "
    Planet name: #{@name}
    Color: #{@color}
    Mass(kg): #{@mass_kg}
    Distance (from Sun-Km): #{@distance_from_sun_km}
    Fun Facts: #{@fun_facts}"
  end
end
