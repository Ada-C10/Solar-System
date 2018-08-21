require_relative 'planet'

def main
  # Create an instance of planet
  mars = Planet.new('Mars', 'red', 6.39e23, 227.9e8, 'Named after Roman god of war, Mars')
  # Create another instance of planet
  venus = earth = Planet.new('Venus', 'white', 5.972e24, 1.08e8, 'Is  the second brightest natural object in the sky')

  # Print various attributes of the planets
  def planet_summary(planet)
    puts "Planet: #{planet.name}"
    puts "Color: #{planet.color}"
    puts "Mass: #{planet.mass_kg}"
    puts "Distance from the sun: #{planet.distance_from_the_sun_km}"
    puts "Fun Fact: #{planet.fun_fact}"
  end

  planet_summary(venus)
  planet_summary(mars)

end

main
