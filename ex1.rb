class Location

  @@stops = []

  attr_accessor :name

  def initiate(name)
    @name = name
  end

  def self.create(name)
    new_location = Location.new(name)
    @@stops << new_location
    return new_location
  end

end



class Trip < Location

  attr_accessor :name
  def initiate(name)
    @name = name
  end

  def display_all
    Location.all.each { |loaction| puts "I stopped at #{location}"  }
  end




end
