class Planet
  def initialize(name, color, mass_kg, distance_from_sun_km, orbit_period, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
    @orbit_period = orbit_period
  end

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def name
    puts "#{@name}"
  end
  def color
    puts "#{@color}"
  end
  def mass_kg
    puts "#{@mass_kg}"
  end
  def distance_from_sun_km
    puts "#{@distance_from_sun_km}"
  end
  def fun_fact
    puts "#{@fun_fact}"
  end
  def planet_summary
    return "Planet: #{@name} \nColor: #{@color} \nWeight: #{@mass_kg} kg
    \n Distance from the sun: #{@distance_from_sun_km} km \nFun Fact: #{@fun_fact}
    \n Orbit Period: #{@orbit_period} days"
  end
  #   other_user.user_summary
  #   self.user_summary
  # end
  # def is_self_before_alpha?(other_user)
  #   return self.name < other_user.name
  # end
end
