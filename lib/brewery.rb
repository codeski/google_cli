class Brewery

  attr_accessor :name, :id, :brewery_type, :street, :city, :state, :postal_code, :latitude, :longitude, :phone, :website_url

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

end
