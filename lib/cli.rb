class CLI

  def start
    puts "Welcome"
    API.fetch_food
  end

end
