require_relative "../models/car.rb"
require_relative "../models/dealer.rb"
require_relative "../models/user.rb"

Car.destroy_all
Dealer.destroy_all
User.destroy_all

[
  { 
    make: "Bugatti", 
    model: "Chiron", 
    year: "2016", 
    price: "1,900,000", 
    image: "http://carreleasedates2017.com/wp-content/uploads/2015/08/2016-Bugatti-Chiron-.jpg", 
    dealer_id: ""
  },
  { 
    make: "BMW", 
    model: "i8", 
    year: "2015", 
    price: "120,000", 
    image: "https://i.ytimg.com/vi/RrreSbMjbsg/maxresdefault.jpg", 
    dealer_id: ""
  },
  { 
    make: "Bentley", 
    model: "Flying Spur", 
    year: "2015", 
    price: "250,000", 
    image: "https://s2.graphiq.com/sites/default/files/4315/media/images/2014_Bentley_Flying_Spur_4dr_Sedan_AWD_60L_12cyl_Turbo_8A_3679953.jpg", 
    dealer_id: ""
  },
  { 
    make: "Ferrari", 
    model: "Berlinetta", 
    year: "2015", 
    price: "195,000", 
    image: "http://aussieexotics.com/forum/dlattach/attach,61710/image/Ferrari-F12-Berlinetta-(F620---F152)-599-Replacement/ferrari-f12-front-blue-azzuro-sangue-10213.0.html.jpg", 
    dealer_id: ""
  },
  {
    make: "Bugatti", 
    model: "Veryon", 
    year: "2015", 
    price: "1,200,000", 
    image: "http://icdn1.digitaltrends.com/image/bugatti-legend-black-bess-veyron-grand-sport-vitesse_100463223_l-1024x657-970x647-c.jpg", 
    dealer_id: ""
  }
].each do |car|
  Car.create!(car)
end

[
  {
    title: "Tha Doggfather", 
    poster: "https://s3.amazonaws.com/rapgenius/1366744664_tha-doggfather-5048f1c320e29.jpg", 
    artist_id: 2, 
    price: 10.99
  },
  {
    title: "Da Game Is to Be Sold, Not to Be Told", 
    poster: "https://upload.wikimedia.org/wikipedia/pt/0/0c/Snoop_Dogg_-_Da_Game_Is_to_Be_Sold,_Not_to_Be_Told.jpg", 
    artist_id: 2, 
    price: 11.99
  },
  {
    title: "No Limit Top Dogg", 
    poster: "http://cps-static.rovicorp.com/3/JPG_400/MI0001/387/MI0001387813.jpg?partner=allrovi.com", 
    artist_id: 2, 
    price: 12.99
  },
  {
    title: "Please Please Me", 
    poster: "https://upload.wikimedia.org/wikipedia/en/a/a4/PleasePleaseMe.jpg", 
    artist_id: 1, 
    price: 9.99
  },
  {
    title: "A Hard Day's Night", 
    poster: "https://upload.wikimedia.org/wikipedia/en/e/e6/HardDayUK.jpg", 
    artist_id: 1, 
    price: 10.99
  }
].each do |dealer|
  Dealer.create!(dealer)
end

[
  { name: "HipHop" },
  { name: "Rock" }
].each do |user|
  Genre.create!(user)
end