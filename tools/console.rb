require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


tom = Driver.new("Tom Hill")
alex = Driver.new("Alex Tips")
joe = Driver.new("Joe Smith")

will = Passenger.new("Will Smith")
anna = Passenger.new("Anna Love")
tiff = Passenger.new("Tiff Joe")

ride1 = Ride.new(tom, anna, 53.5)
ride2 = Ride.new(tom, anna, 24.5)
ride3 = Ride.new(alex, tiff, 106.5)
ride4 = Ride.new(tom, will, 46.3)
ride5 = Ride.new(alex, anna, 70.6)
ride6 = Ride.new(joe, will, 25.5)
ride7 = Ride.new(joe, tiff, 54.5)

binding.pry
0
