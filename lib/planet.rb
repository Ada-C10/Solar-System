class Planet

  attr_accessor :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize (name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    # planet_hash =
    # { planet_name: @name,
    #   planet_color: @color,
    #   planet_mass: @mass_kg,
    #   planet_distance_from_sun: @distance_from_sun_km,
    #   planet_fun_fact: @fun_fact
    # }
    better_formatting =  "The planet is named #{@name}, it is the color #{@color}, it has a mass of #{@mass_kg}, it is #{@distance_from_sun_km} km from the sun and a fun fact about this planet is #{@fun_fact}"
    return better_formatting
  end

end
