require_relative 'planet'
require_relative 'solar_system'

def main
  mars = Planet.new("Mars","reddish-brown", 6.39e23, 2.279e8, "Named after a mythological figure - the Roman god of war"  )
  jupiter = Planet.new("Jupiter", "shades of white, brown, and yellow", 1.898e27, 7.785e8, "It does not have a true surface, as the planet is mostly swirling gases and liquids")

  solar_system = SolarSystem.new("Sol")
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  list = solar_system.list_planets
  puts list

end

main
