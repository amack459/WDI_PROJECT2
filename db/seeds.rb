require_relative "../app/models/car.rb"
require_relative "../app/models/dealer.rb"
require_relative "../app/models/user.rb"
require "bcrypt"

Car.destroy_all

[
  { 
    make: "Bugatti", 
    model: "Chiron", 
    year: "2016", 
    price: "1,900,000", 
    image: "http://carreleasedates2017.com/wp-content/uploads/2015/08/2016-Bugatti-Chiron-.jpg"
  },
  { 
    make: "BMW", 
    model: "i8", 
    year: "2015", 
    price: "120,000", 
    image: "https://i.ytimg.com/vi/RrreSbMjbsg/maxresdefault.jpg"
  },
  { 
    make: "Bentley", 
    model: "Flying Spur", 
    year: "2015", 
    price: "250,000", 
    image: "https://s2.graphiq.com/sites/default/files/4315/media/images/2014_Bentley_Flying_Spur_4dr_Sedan_AWD_60L_12cyl_Turbo_8A_3679953.jpg"
  },
  { 
    make: "Ferrari", 
    model: "Berlinetta", 
    year: "2015", 
    price: "195,000", 
    image: "http://aussieexotics.com/forum/dlattach/attach,61710/image/Ferrari-F12-Berlinetta-(F620---F152)-599-Replacement/ferrari-f12-front-blue-azzuro-sangue-10213.0.html.jpg"
  },
  {
    make: "Bugatti", 
    model: "Veryon", 
    year: "2015", 
    price: "1,200,000", 
    image: "http://icdn1.digitaltrends.com/image/bugatti-legend-black-bess-veyron-grand-sport-vitesse_100463223_l-1024x657-970x647-c.jpg"
  }
].each do |car|
  Car.create!(car)
end

Dealer.destroy_all

[
  {
    email: "val@procars.com", 
    user_name: "Valpro", 
    dealership: "Pro Cars"
  },
  {
    email: "albert@luxurycars.com", 
    user_name: "LuxAl", 
    dealership: "Luxury Cars"
  },
  {
   email: "micah@bugattidealers.com", 
   user_name: "Micha B", 
   dealership: "Bugatti Dealers"
  },
  {
    email: "logan@bmwlondon.com", 
   user_name: "Logan", 
   dealership: "BMW London"
  }
].each do |dealer|
  Dealer.create!(dealer) 
end

User.destroy_all
[
  { email: "amack@gmail.com", 
    user_name: "amack",
    password: "password"},
  { email: "max@gmail.com", 
    user_name: "mad max", 
    password: "password"},
  { email: "danielle@gmail.com", 
    user_name: "dani g",
    password: "password"}
].each do |user|
  User.create!(user)
end

@cars = Car.all

Dealer.all.each_with_index do |dealer, index|
  dealer.cars << @cars[index]
end