require_relative 'planet'
# BONUS - PUT THIS IN A TABLE!
def main
  pluto = Planet.new("Pluto", "Blue", "1.309e22", "4.67e9", "It's not really a planet!")
  puts pluto.summary
  puts ""
  mars = Planet.new("Mars", "Red", "6.39e23", "2.279e8", "We may live on it someday")
  puts mars.summary
end

main
