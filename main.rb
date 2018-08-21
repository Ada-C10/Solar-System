require_relative 'planet'

def main
  # creates two instances of planet and prints a summary of informaton for each.
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Earth is the only planet known to support life')

  puts
  puts earth.summary

  mars = Planet.new('Mars', 'red', 6.4171e23, 2.279e8, 'Mars carries a name of the Roman god of war, and is often referred to as the "Red Planet"')

  puts
  puts mars.summary

end

main
