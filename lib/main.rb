require_relative 'planet'

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  # do stuff with planets
  planet_soul = Planet.new('Meow', 'purple', 6.22e34, 1.23e9, 'Filled with lots of cats')
  puts earth.summary
  puts planet_soul.summary

end

main
