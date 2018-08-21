#Planet class

class Planet

  #attr_accessor - Lets you do both Read and Write
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  #attr_writer

  def initialize(name, color, mass_kg, distance_from_sun_km,fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "Facts about #{name}: \n \
            Color: #{color}\n \
            Mass (kg): #{mass_kg}\n \
            Distance from the Sun (km): #{distance_from_sun_km}\n \
            Fun Fact: #{fun_fact}"
  end
end
