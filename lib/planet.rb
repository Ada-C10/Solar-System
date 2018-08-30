class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = number_input_check(mass_kg.to_s,
      "ERROR: Mass must be a number greater than zero.
      Enter mass in kg: ")
    @distance_from_sun_km = number_input_check(distance_from_sun_km.to_s,
      "ERROR: Distance must be a number greater than zero.
      Enter distance from sun in km: ")
    @fun_fact = fun_fact
  end

  def number_input_check(input, error_msg)
    while ((/\A[+-]?\d*(\.?\d+)?(e?\+?\d+)?\Z/.match(input) ==
      nil) || input.to_f <= 0)
      print error_msg
      input = gets.chomp
    end
    return input.to_f
  end

  def summary
    return "#{@name.upcase}: #{@color} in color, weighs #{@mass_kg} kg,
    located #{@distance_from_sun_km} km from the sun.
    Fun fact about #{@name.upcase}: #{@fun_fact}"
  end
end
