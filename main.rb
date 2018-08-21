require_relative 'planet'

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mercury = Planet.new('Mercury', "grey", 5.343242, 2.2342, "planet closest to the sun")
  puts earth.summary
end

main
