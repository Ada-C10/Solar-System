class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_the_sun, :fun_fact

  def initialize(name, color, mass_kg, distance_from_the_sun, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_the_sun = distance_from_the_sun
    @fun_fact = fun_fact
  end

  def summary
    return "#{@name}: #{@color}, #{@mass_kg}, #{@distance_from_the_sun} & Fun Fact: #{@fun_fact}."
  end

end
