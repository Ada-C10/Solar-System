require_relative 'planet'

def main
  earth = Planet.new('Earth', 'blue-green', 40, 203.20, 'Only planet known to support life')
  puts earth.summary

  pluto = Planet.new('Pluto', 'hot pink', 5032.323, 1.221, 'Is it really a planet?')
  puts pluto.summary
end


main
