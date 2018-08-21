require_relative 'planet.rb'

def main
  mercury = Planet.new('Mercury','gray', '3.3022 E23', 57900000, 'Mercury is slightly smaller than Earth’s moon and is extremely hot. As in 850 Fahrenheit or so.' )
  venus = Planet.new('Venus', 'red', '4.8685 E24', 108200000, '1 day on Venus is the equivalent of 241 Earth days.')

  puts mercury.summary
  puts venus.summary
end

main
