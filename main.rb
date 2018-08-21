require_relative 'planet.rb'

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

  saturn = Planet.new('Saturn', 'yellow-brown', 5.683e26, 1.433e9, 'Has 150 moons and smaller moonlets')

end

main
