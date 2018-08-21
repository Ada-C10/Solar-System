# This the class Planet
class Planet

# The helper method (attr_reader)
attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  def initialize (name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
     return "Today #{@name} whose color is #{@color}, weighs #{@mass_kg},  and is #{distance_from_sun_km}. One of its fun facts is that it is #{@fun_fact}."
  end

end
