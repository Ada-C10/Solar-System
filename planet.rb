class Planet
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  # unless @mass_kg > 0 && @distance_from_sun_km > 0
  #     raise ArgumentError
  # end

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def summary
    return "The planet #{@name}.\nIt has a #{@color} color.\nIts is #{@mass_kg}kg in size.\nIt is #{@distance_from_sun_km}km from the sun.\nFunfact: #{@fun_fact}."
  end
end
