# Planet class to keep track of name, color, mass in kg, distance from sun in km, and fun fact about individual planets.
class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "#{@name} is a #{@color} planet in our solar system. It's mass is #{@mass_kg} kilograms, and it orbits #{@distance_from_sun_km} kilometers from the sun. #{@fun_fact}."
  end
end
