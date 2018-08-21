class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact #readable but not writeable outside class

  def initialize(name, planet_color, planet_mass, distance, fact) #data input at creation of new planet class object
    @name = name
    @color = planet_color
    @mass_kg = planet_mass
    @distance_from_sun_km = distance
    @fun_fact = fact
  end

  def summary(planet)
    return "#{@name}: color is #{@color}; mass in kilograms is #{@mass_kg}; distance from the sun is #{@distance_from_sun_km}. \nDid you know? #{@fun_fact}"
end
