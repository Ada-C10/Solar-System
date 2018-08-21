class Planet
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass = mass_kg
    @distance = distance_from_sun_km
    @fun_fact = fun_fact
  end
  def summary
    return "    Name: #{@name}
    Color: #{@color}
    Mass: #{@mass}
    Distance: #{@distnace}
    Fun_fact: #{@fun_fact}\n"
  end

  attr_reader :name, :color, :mass, :distance, :fun_fact
end
