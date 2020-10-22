class API

  #all Class methods

  def self.make_colorado_breweries
    url = "https://api.openbrewerydb.org/breweries?by_state=colorado"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    breweries = JSON.parse(response)

    breweries.each do |brew|
      binding.pry
      # brewery = Brewery.new
      # brewery.name = brew["name"]
      # brewery.id = brew["id"]
      # brewery.brewery_type = brew["brewery_type"]
      # brewery.street = brew["street"]
      # brewery.city = brew["city"]
      # brewery.state = brew["state"]
      # brewery.postal_code = brew["postal_code"]
      # brewery.longitude = brew["longitude"]
      # brewery.latitude = brew["latitude"]
      # brewery.phone = brew["phone"]
      # brewery.website_url = brew["website_url"]
    end
  end



end
