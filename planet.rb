require 'minitest'

class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    if mass_kg <= 0
      raise ArgumentError, 'Mass must be greater than 0'
    else
      @mass_kg = mass_kg
    end
    if distance_from_sun_km <= 0
      raise ArgumentError, 'Distance must be greater than 0'
    else
      @distance_from_sun_km = distance_from_sun_km
    end
    @fun_fact = fun_fact
  end

  def summary
    return "Planet #{@name} is #{@color} in color, weighs #{@mass_kg} kg \
    and is #{distance_from_sun_km} km from the sun. It is the #{fun_fact}"
  end

end
