class Location

  attr_accessor :name

  def initiate(name)
    @name = name
  end

end



class Trip < Location

  @@stops = []

  attr_accessor :name
  def initiate(name)
    @name = name
  end

  def self.all
    puts "Begin trip"
    @@stops.each { |loaction| puts "I stopped at #{location}"  }
    puts "End of trip"
  end

  def self.create(name)
    new_location = Location.new(name)
    @@stops << new_location
    return new_location
  end


end
