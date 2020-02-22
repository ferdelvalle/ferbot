# frozen_string_literal: true.

class Dishes
  # Dishes from The Americas
  @@Argentinia = %w[Choripán Steak Empanadas Alfajores Chimichurri Pacú Mate Argentine]
  @@Brazil = %w[Brigadeiro Tapioca Feijoada Madalena Apim Feijão churrasco Brazilian]
  @@Colombia = %w[Ajiaco Arepas Fritanga Empanadas Patacones Sancocho Tamales Colombian]
  @@Mexico = %w[Tacos Nachos Fajitas Enchiladas Pozole Chilaquiles Tostadas Mole Guacamole Tamales Mexican]
  @@Peru = %w[Ceviche Cuy Causa Shambar Tiradito Pachamanca Anticuchos Peruvian]
  @@USA = %w[Jerky Cornbread Hamburger Hot-Dog Meatloaf BBQ-Ribs BLT Cheeseburger American]

  # Dishes from Eastern Europe
  @@hungary = %w[Goulash Lángos Főzelék Pörkölt Paprikás Kürtöskalács Hungarian]
  @@latvia = %w[Rasol Karbonade Speck Dill Shashlik Griķi Asinsdesa Pelmeni Latvian]
  @@poland = %w[Pierogi Rosół Gołąbki Bigos Mizeria Kompot Kabanosy Zurek Kopytka Nalesniki Krokiety Pierniki Sernik Szarlotka Polish]
  @@russia = %w[Borscht Shchi Solyanka Ukha Pirozhki Blin Shashlyk Stroganoff Ikra Smetana Vodka Russian]
  @@romania = %w[Sarmale Mămăligă Mici Jumări Cozonac Papanași Romanian]
  @@serbia = %w[Sarma Ćevapi Burek Prebranac Gibanica Čvarci Kajmak Knedle Slatko Kajmak Pljeskavica Musaka Kobasice Kulen Serbian]

  # Dishes from Western Europe
  @@britain = ['Haggis', 'Fish and Chips', 'Scones', 'Roast Beef and Yorkshire pudding', 'Eccles cake', 'Black pudding', 'Laverbread', 'British']
  @@france = ['Soupe à l’oignon', 'Coq au vin', 'Cassoulet', 'Boeuf bourguignon', 'Flamiche', 'Confit de canard', 'Ratatouille', 'French']
  @@germany = %w[Sauerbraten Schweinshaxe Rinderroulade Bratwurst Kartoffelpuffer Kartoffelkloesse Sauerkraut Spätzle Butterkäse German]
  @@greece = %w[Taramasalata Moussaka Baklava Amygdalota Bougatsa Dolmadakia Tomatokeftedes Galaktoboureko Gyros Halvas Kataifi Keftethes Greek]
  @@italy = %w[Pizza Lasagna Gelato Panzanella Focaccia Spaghetti Cicchetti Caponata Burrata Bruschetta Risotto Tiramisu Panettone Italian]
  @@spain = %w[PAella Carrillada Cochinillo Salmorejo Bacalao Jamón Croquetas Gazpacho Flan Pisto Churros Torrijas Spanish]

  # Dishes from Asia
  @@china = ['Sweet and Sour Pork', 'Spring Rolls', 'Chow Mein', 'Peking Roasted Duck', 'Kung Pao Chicken', 'Won Ton Soup', 'Chinese']
  @@japan = %w[Sushi Sashimi Unagi Tempura Soba Undon Onigiri Yakitori Ramen Donburi Tamagoyaki Tonkatsu Sukiyaki Teppanyaki Yakimeshi Japanese]
  @@thailand = ['Tom Yum Goong', 'Pad Thai', 'Gaeng Keow Wan Gai', 'Gaeng Daeng', 'Khao Phat', 'Tom Kha Gai', 'Khao Soi', 'Yum Pla Duk Foo', 'Thai']

  # Dishes from the Arab world
  @@argelia = %w[Chakchouka Couscous Mechoui Makroudh Hariri Algerian]
  @@egypt = %w[Falafel Koshari Mahshi Shawarma Molokhia Fattah Feseekh Konafa Egyptian]
  @@morroco = %w[Bissara Tagine Harira Tangia Amelou Makouda Kefta Moroccan]
  @@turkey = %w[Döner Köfte Pide Kumpir Meze Kebab Turkish]

  # Array containing all cuisines
  @@cuisines = []

  # Populates the cuisines array with all the dishes
  # Dishes from The Americas
  @@cuisines << @@Argentinia
  @@cuisines << @@Brazil
  @@cuisines << @@Colombia
  @@cuisines << @@Mexico
  @@cuisines << @@Peru
  @@cuisines << @@USA
  # Dishes from Eastern Europe
  @@cuisines << @@hungary
  @@cuisines << @@latvia
  @@cuisines << @@poland
  @@cuisines << @@russia
  @@cuisines << @@romania
  @@cuisines << @@serbia
  # Dishes from Western Europe
  @@cuisines << @@britain
  @@cuisines << @@france
  @@cuisines << @@germany
  @@cuisines << @@greece
  @@cuisines << @@italy
  @@cuisines << @@spain
  # Dishes from Asia
  @@cuisines << @@china
  @@cuisines << @@japan
  @@cuisines << @@thailand
  # Dishes from the Arab world
  @@cuisines << @@argelia
  @@cuisines << @@egypt
  @@cuisines << @@morroco
  @@cuisines << @@turkey

  # Returns the cousine's index
  def self.recommend_cousine(food)
    # Inputs the great array with subarrays
    @food = food
    # Generates the universe of possible indexes of each subarray
    @generali = @food.length
    # Randomly selects a subarray
    @cuisinei = rand(@generali)
    @cuisinei
  end

  # Returns the cousine's length - 1
  def self.recommend_dish_index(food, cuisinei)
    # Inputs the great array with subarrays
    @food = food
    @cuisinei = cuisinei

    # Generates the universe of possivle values of a subarray
    @locali = @food[@cuisinei].length
    @locali -= 1
    @locali
  end

  # Returns the recommended dish
  def self.recommend_dish(food, dishes)
    # Inputs the great array with subarrays
    @food = food
    @dishes = dishes

    # Randomly selects one of the values of a subarray except for the last one
    @dishi = rand(@dishes)
    @recommendation = @food[@cuisinei][@dishi]
    @recommendation
  end

  # Returns the Cousine's citizenship
  def self.recommend_country(food, cuisinei, country)
    # Inputs the great array with subarrays
    @food = food
    @cuisinei = cuisinei
    @country = country

    # Stores the value of last value of the subarray
    @citizenship = @food[@cuisinei][@country]
    @citizenship
  end

  # Returns an array with the recommended dish and the cousine it belongs to
  def self.recommend
    @food = @@cuisines
    @myindex = Dishes.recommend_cousine(@food)
    @localindex = Dishes.recommend_dish_index(@food, @myindex)
    @mydish = Dishes.recommend_dish(@food, @localindex)
    @mycountry = Dishes.recommend_country(@food, @myindex, @localindex)
    @recommendation = [@mydish, @mycountry]
    @recommendation
  end

end

recommendation = Dishes.recommend
puts "I recommend you #{recommendation[0]} a great #{recommendation[1]} dish "

