#Planet class

class Planet

  #attr_accessor - Lets you do both Read and Write
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  #attr_writer

  def initialize(name, color, mass_kg, distance_from_sun_km,fun_fact)
    @name = name.capitalize
    @color = color
    @fun_fact = fun_fact
    raise ArgumentError.new("Planet mass must be an integer or float") unless mass_kg.class == Integer || mass_kg.class == Float
    raise ArgumentError.new("Planet mass should be greater than 1") unless mass_kg > 0
    @mass_kg = mass_kg
    raise ArgumentError.new("Planet distance must be an integer or float") unless distance_from_sun_km.class == Integer || distance_from_sun_km.class == Float
    raise ArgumentError.new("Planet distance from the sun should be greater than 1") unless distance_from_sun_km > 0
    @distance_from_sun_km = distance_from_sun_km
  end

  def summary
    return "Facts about #{name}: #{name}'s color is #{color}, it weighs #{mass_kg} kg's and is #{distance_from_sun_km} km from the sun. #{name}'s fun fact is that #{fun_fact} \n"
  end
end
