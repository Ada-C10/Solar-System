class Planet

  def initialize (name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact

    validate
  end

  def validate
    raise ArgumentError.new("Mass must be greater than zero.") unless @mass_kg > 0
    raise ArgumentError.new("Distance must be greater than zero.") unless @distance_from_sun_km > 0
  end

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def summary
    return "Here is some info about #{@name}.
    Color: #{@color}
    Mass: #{@mass_kg}
    Distance (in kilometers) from the sun: #{@distance_from_sun_km}
    Fun Fact: #{@fun_fact}"
  end

end
