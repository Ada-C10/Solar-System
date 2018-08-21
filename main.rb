require_relative 'planet.rb'

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

  jupiter = Planet.new('jupiter', 'white-red-orange-brown', 1.898e27, 483.8, 'Largest planet in the Solar System and is 318 times as massive as Earth')
end

main
