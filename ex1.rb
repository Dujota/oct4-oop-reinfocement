class Trip
  # This will be an array of Location instances:
  @@stops = []

  def initiate
  end

  def self.create(name)
    new_location = Location.new(name)
    @@stops << new_location
    return new_location
  end

  def self.all
    puts "Begin trip"
    @@stops.each { |loaction| puts "I stopped at #{location}"  }
    puts "End of trip"

    #alternate way usin the hint:
    # @@stops.each_cons(2) do |locations|
    #  puts "Travelled from #{ locations[0].name} to #{locations[1].name}"

  end

 # define a method that lets you add locations to the trips list of destinations

end

class Location < Trip

  attr_accessor :name

  def initiate(name)
    @name = name
  end

end

# Trip.new
Trip.create("Ottawa")
Trip.create("Montreal")
Trip.create("Quebec City")
Trip.create("Halifax")
Trip.create("St. John's")
Trip.all
