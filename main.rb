# main.rb
require_relative 'planet.rb'

#Contain one method called main that will exercise your code
def main
  #This method should create two different instances of Planet
  jupiter = Planet.new('Jupiter','orange', '5.972*10**24 kg' , '770 million km', 'is called after the ancient Roman sky-god')
  mars = Planet.new('Mars','red','6.39*10**23 kg', '227.9 million km',  'has ice caps in its North and South pole' )

  #This method should print out some of the planets' attributes
  puts jupiter.mass_kg
  # mars = Planet.new(:color, :distance_from_sun_km)

  puts mars.summary
  puts jupiter.summary
end

main
