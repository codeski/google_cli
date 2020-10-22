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
      brewery_choice

      sleep(2)
      puts "\n"
      list

    else
      puts "Enjoy your local Brewery!"
      puts ".~~~~."
      puts "i====i_"
      puts "|cccc|_)"
      puts "|cccc|"
      puts "'-==-'"
    end
  end

  def list_breweries
    Brewery.all.each.with_index(1) do |brewery, index|
      puts "#{index}. #{brewery.name}"
    end
  end

  def brewery_choice
    puts "Enter the # of the Brewery you want to know more about"
    index = gets.strip.to_i - 1
    until index.between?(0, Brewery.all.length - 1)
      puts "Try again"
      index = gets.strip.to_i - 1
    end
      brewery_choice = Brewery.all[index]
      brewery_info(brewery_choice)
  end

  def brewery_info(brewery)
    puts "\n"
    puts brewery.name
    puts "address: " + brewery.street + ", " + brewery.city + ", " + brewery.postal_code
    puts "web: " + brewery.website_url
    puts "phone: " + brewery.phone
  end

end
