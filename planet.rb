
require 'pry'

class Planet
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def name
    return @name
  end

  def color
    return @color
  end

  def mass_kg
    return @mass_kg
  end

  def distance_from_sun_km
    return @distance_from_sun_km
  end

  def fun_fact
    return @fun_fact
  end

  def summary
    return "#{@name}- Color: #{@color} , #{@mass_kg}, #{@distance_from_sun_km} from the sun, and #{@fun_fact}."
  end

end
