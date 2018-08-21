require_relative 'planet.rb'

def main
  planet1 = Planet.new "Mercury",
                       "dark grey",
                       3.285e23,
                       5.791e7,
                       "has an earth year of about 88 days"

  planet2 = Planet.new "Mars",
                       "red",
                       6.39e23,
                       2.27e8,
                       "men are in fact not from here"

  # puts planet1.name
  # puts planet1.color
  # puts planet2.name
  # puts planet2.color
  #
  # puts planet1.summary
  # puts planet2.summary
end

main