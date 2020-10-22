class CLI

  def start
    puts "Welcome"
    API.make_colorado_breweries
    self.list
  end

  def list
    puts "Need Colorado brewery information?"
    puts "type 'yes' to continue or anything else to exit"
    user_input = gets.strip.downcase
    if user_input == "yes" || user_input == "y"
      puts "Excellent!"
      list_breweries
      # brewery_choice
      # user_prompt
    end
  end

  def list_breweries
    Brewery.all.each.with_index(1) do |brewery, index|
      puts "#{index}. #{brewery.name}"
    end
  end

  def brewery_choice
    puts "Enter the # of the Brewery you want to know more about"
    user_input = gets.strip
  end

end
