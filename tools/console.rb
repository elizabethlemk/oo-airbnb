require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end




red_house = Listing.new("The Red House", "Atlanta")
small_apt = Listing.new("Intimate Apartment", "New York")

spring_break = Trip.new("Lizzy", red_house, "5 nights")
winter_break = Trip.new("Lizzy", small_apt, "4 nights")
weekend_trip = Trip.new("Emily", small_apt, "4 nights")

lizzy = Guest.new("Lizzy")
emily = Guest.new("Emily")
binding.pry
