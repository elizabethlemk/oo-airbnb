
class Listing
  attr_reader :city, :name

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def guests
    trips.map { |list| list.guest }
  end

  def trips
    Trip.all.select{|list| list.listing == self}
  end

  def trip_count
    trips.count
  end

  def self.find_all_by_city(city_name)
    self.all.select { |list| list.city == city_name}
  end

  def self.most_popular
    trip_count = self.all.map { |list| list.trips.count }
    trip_count.sort!
    self.all.find {|list| list.trips.count == trip_count.last}
  end
end
