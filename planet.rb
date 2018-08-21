class Planet
  #constructor
  def initialize(name, color, mass_kg,distance_from_sun_km, fun_fact)

    while mass_kg <= 0
      puts "Mass must be greater than 0. Enter mass again: "
      mass_kg = gets.chomp.to_f
    end
    while distance_from_sun_km <= 0
      puts "Distance must be greater than 0. Enter distance again: "
      distance_from_sun_km = gets.chomp.to_f
      return
    end
    @name = name
    @color = color
    @mass = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  # def name
  #   return @name
  # end
  # def color
  #   return @color
  # end
  # def mass_kg
  #   return @mass_kg
  # end
  # def distance_from_sun_km
  #   return @distance_from_sun_km
  # end
  # def fun_fact
  #   return @fun_fact
  # end
  def summary
    return "#{name} is planet that is #{color} ,weighs #{mass_kg} and is #{distance_from_sun_km}
    away from the sun, it is #{fun_fact}"
  end

end
