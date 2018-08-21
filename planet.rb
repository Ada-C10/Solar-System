class Planet
  # Setting attributes to be readable
  attr_reader :name, :color, :mass_kg, :distance_from_the_sun_km, :fun_fact

  # Adding Constructor
  def initialize(name, color, mass_kg, distance_from_the_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_the_sun_km = distance_from_the_sun_km
    @fun_fact = fun_fact
  end

end

earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
p earth.name
