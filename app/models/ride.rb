class Ride

  attr_reader :driver, :passenger, :distance

  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_distance
    total = 0
    self.all.each do |ride|
      total += ride.distance
    end
    total
  end

  def self.average_distance
    self.total_distance / self.all.count
  end
end
