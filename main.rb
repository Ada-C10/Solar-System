# main.rb
require_relative 'planet'

def main
  def location=(new_location)
    @location = new_location
    return "#{@name} is the #{@location} place from the sun"
  end
  def astrology=(new_astrology)
    @astrology = new_astrology
    return "In astrology, the ruling planet for {@astrology} is #{@name}"
  end
  def summary
    return "#{@name} is #{@color} in color, weights #{@mass_kg} and its located #{@distance_from_sun_km} from the sun! Did you know this planet #{@fun_fact}? "
end

main
