# This program is to create a planet class
class Planet
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    unless mass_kg > 0
       raise ArgumentError, "mass_kg should be a number"
    end
    unless distance_from_sun_km > 0
       raise ArgumentError, "distance_from_sun_km should be a number"
    end
      @name = name
      @color = color
      @mass_kg = mass_kg
      @distance_from_sun_km = distance_from_sun_km
      @fun_fact = fun_fact

  end

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def summary
    return "Name: #{@name} Color: #{@color} mass_kg: #{@mass_kg} distance_from_sun_km: #{@distance_from_sun_km} fun_fact: #{@fun_fact}"
  end
end
