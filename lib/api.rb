#all should be class meathods

class API

  def self.make_colorado_breweries
    url = "https://api.openbrewerydb.org/breweries?by_state=colorado"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)
    binding.pry

    # array_of_breweries = hash["id"]

    #
    # array_of_breweries.each do |brew_hash|
    #   brewery = Breweries.new
    #   brewery.name = food_hash[""]
    #   object.attribute = food_hash[""]
    # end
  end



end
