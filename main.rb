require_relative 'planet'

def main
  planet1 = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8,
  'Only planet known to support life')
  planet2 = Planet.new('Saturn', 'yellow', 345, 123, 'Planet with rings')

  puts planet1.summary
  puts planet2.summary

end

main
