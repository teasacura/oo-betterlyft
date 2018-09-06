class Driver

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select do |ride|
      ride.driver == self
    end
  end

  def passenger_names
    self.rides.map do |ride|
      ride.passenger.name
    end.uniq
  end

  def self.mileage_cap(distance)
    self.all.select do |driver|
      driver.total_driven > distance
    end
  end

  def longest_ride
    # longest = 0
    # self.rides.each do |ride|
    #   if ride.distance > longest
    #     longest = ride.distance
    #   end
    #   longest
    # end

    self.rides.sort_by{|ride| ride.distance }.last
  end

  private

  def total_driven
    total = 0
    self.rides.each do |ride|
      total += ride.distance
    end
    total
  end

end
