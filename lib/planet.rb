
class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)

    invalid_argument if invalid_mass(mass_kg) || invalid_distance(distance_from_sun_km)

    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "\n#{@name} is a #{@color} planet.\nIt weighs #{@mass_kg} and is #{@distance_from_sun_km} km away from the sun!\nALSO, here's a really fun fact about #{@name}!\n#{fun_fact}"
  end

  def invalid_mass(mass_kg)
    mass_kg <= 0
  end

  def invalid_distance(distance_from_sun_km)
    distance_from_sun_km <= 0
  end

  def invalid_argument
    raise ArgumentError, 'Argument should be greater than 0'
  end
end
