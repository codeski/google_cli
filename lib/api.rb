#all should be class meathods

class API

  def self.fetch_food
    # url = "https://pokeapi.co/api/v2/berry/"
    url = "https://api.openbrewerydb.org/breweries?by_state=colorado"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)
    binding.pry

    # array_of_food = hash["results"]

    # array_of_food[0]["name"]
    # binding.pry
    #
    # #blah = name
    # #fdjkla
    # #attributes that go into object class
    #
    # array_of_food.each do |food_hash|
    #   object = object.new
    #   object.name = food_hash[""]
    #   object.insturctions = food_hash[""]
    #   object.attribute = food_hash[""]
    # end
  end



end
