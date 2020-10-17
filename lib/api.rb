#all should be class meathods

class API

  def self.fretch_food
    url = ""
    uri = URI(url)
    response = Net::HTTP.get(uri)
    hash = JSON.parse(response)

    array_of_food = hash[""]

    #blah = name
    #fdjkla
    #attributes that go into object class

    array_of_food.each do |food_hash|
      object = object.new 
      object.name = food_hash[""]
      object.insturctions = food_hash[""]
      object.attribute = food_hash[""]
    end
  end



end
