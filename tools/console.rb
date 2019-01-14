require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end




red_house = Listing.new("The Red House", "Atlanta")
small_apt = Listing.new("Intimate Apartment", "New York")

lizzy = Guest.new("Lizzy")
emily = Guest.new("Emily")

spring_break = Trip.new(lizzy, red_house, 5)
winter_break = Trip.new(lizzy, small_apt, 4)
weekend_trip = Trip.new(emily, small_apt, 4)

binding.pry
