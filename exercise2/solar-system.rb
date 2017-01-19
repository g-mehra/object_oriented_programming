class System


   @@bodies = []


  def self.add(body)
    @@bodies << body
  end

  def self.body_read
    @@bodies
  end

  def self.total_mass
    @@mass_in_system = 0
    @@bodies.each do |body|
      @@mass_in_system += body.mass
    end
    @@mass_in_system
  end

end


class Body

  attr_reader :name
  attr_reader :mass

  def initialize (name, mass)
    @name = name
    @mass = mass
    System.add(self)
  end
end

class Planet < Body

  def initialize(name,mass,day,year)
    super(name, mass)
    @day = day
    @year = year
  end

end

class Stars < Body

  def initialize(name,mass,type)
    super(name, mass)
    @type = type
  end

end

class Moons < Body

  def initialize(name,mass,month,planet)
    super(name, mass)
    @month = month
    @planet = planet
  end

end
