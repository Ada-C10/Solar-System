class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_the_sun_km, :fun_fact
  def initialize(name, color, mass_kg, distance_from_the_sun_km,fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_the_sun_km
    @fun_fact = fun_fact
  end
  def summary
    return "Your planet is #{@name}! #{@name} is #{@color}, its mass is #{@mass_kg}, and it is #{@distance_from_sun_km} from the sun. Here is a fun fact about #{@name}: #{@fun_fact}"
end
end
