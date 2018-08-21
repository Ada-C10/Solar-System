class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize (name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    planet_hash = [
      { planet_name: @name,
        planet_color: @color,
        planet_mass: @mass_kg,
        planet_distance_from_sun: @distance_from_sun_km,
        planet_fun_fact: @fun_fact
      }
    ]


    return planet_hash
  end

end
