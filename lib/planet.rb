class Planet


  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "#Planet: {@name} \n\t Color: #{@color} \n\t Mass: #{@mass_kg} \n\t Distance from Sun (km): #{@distance_from_sun_km} \n\t Fun fact: #{@fun_fact}"
  end

end
