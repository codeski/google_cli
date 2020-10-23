class CLI

  def start
    puts "Welcome"
    API.make_colorado_breweries
    # binding.pry
    self.list
  end

  def list
    puts "Need Coloraod brewery information?"
    puts "type 'yes' to continue or anything else to exit"
    user_input = gets.strip.downcase

    if user_input == "yes" || user_input == "y" || user_input == "ye"
      list_breweries
      puts "\n"
      brewery_choice
      sleep(3)
      puts "\n"
      list
    else
      puts "\n"
      puts "Ok, enjoy your local brewery!"
      puts ".~~~~."
      puts "i====i_"
      puts "|cccc|_)"
      puts "|cccc|"
      puts "'-==-'"
    end
  end

  def list_breweries
    Brewery.all.each.with_index(1) do |brewery, index|
      puts "#{index}. #{brewery.name}, #{brewery.city}"
    end
  end

  def brewery_choice
    puts "Enter the # of the brewery you want to know more about"
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
    if brewery.website_url != ""
      puts "web: " + brewery.website_url
    end
    if brewery.phone != ""
      puts "phone: " + brewery.phone.insert(3, '-').insert(-5, '-')
    end
  end

end
