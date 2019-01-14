
class Guest
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def listings
    trips.map { |list| list.listing }
  end

  def trips
    Trip.all.select { |list| list.guest == self.name }
  end

  def trip_count
    trips.count
  end

  def self.pro_traveler
    self.all.select { |list| list.trip_count > 1 }.map { |list| list.name }
  end

  def self.find_all_by_name(search_name)
    self.all.select { |list| list.name == search_name }
  end
end
