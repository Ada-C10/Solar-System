class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)

    raise_error_int if invalid_mass(mass_kg) || invalid_distance(distance_from_sun_km)

    raise_error_cannot_be_blank if blank_input(name) || blank_input(color) || blank_input(mass_kg) || blank_input(distance_from_sun_km) || blank_input(fun_fact)

    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "\n☄️ #{@name} is a #{@color} planet. 🌎".red + "\nIt weighs #{@mass_kg} kg".magenta + " and is #{@distance_from_sun_km} km away from the sun!".light_blue + "\nALSO, here's a really fun fact about #{@name}!".green + "\n#{fun_fact} 🌌".yellow
  end

  def invalid_mass(mass_kg)
    mass_kg <= 0
  end

  def invalid_distance(distance_from_sun_km)
    distance_from_sun_km <= 0
  end

  def blank_input(input)
    input.to_s.empty?
  end

  def raise_error_int
    raise ArgumentError, 'Argument should be greater than 0'
  end

  def raise_error_cannot_be_blank
    raise ArgumentError, 'Cannot have an empty input'
  end
end
