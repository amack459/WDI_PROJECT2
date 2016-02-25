#Index
get '/cars' do 
  if is_dealer?
    dealer = Dealer.find(current_user.dealer_id)
    @cars = dealer.cars
  else
    @cars = Car.all
  end
  erb :'cars/index'
end

#New
get '/cars/new' do 
  @car = Car.new
  erb :'cars/new'
end

#Create
post '/cars' do
  authorize!
  @car = Car.new(params[:car])
  @car.dealer = current_user.dealer
  if @car.save
    redirect "/cars"
  else
    erb :'cars/new'
  end
end

#Show
get '/cars/:id' do 
  @car = Car.find(params[:id])
    erb :'cars/show'
end

#Edit
get '/cars/:id/edit' do
  @car = Car.find(params[:id])
  erb :'cars/edit'
end

#Update
put '/cars/:id' do
  @car = Car.find(params[:id])
  if @car.update(params[:car])
    redirect "/cars/#{@car.id}"
  else
    erb :'cars/edit'
  end
end

# Add car to wishlist
post '/cars/:id/add-to-wishlist' do

  @car = Car.find(params[:id])

  if current_user.cars.count < 10
    current_user.cars << @car
  end

  # Send mail
  Mail.deliver do
    to "acacialmack@gmail.com"
    from "acacialmack@gmail.com"
    subject "Car request"
    body " Your car has been added to a wishlist"
  end
  redirect '/cars'
end

# #Delete
delete '/cars/:id/delete' do 
  @car = Car.find(params[:id])
  @car.destroy
  redirect "/cars"
end


# delete car from user's wishlist
delete '/users/cars/:id/delete' do
  @car = Car.find(params[:id])
  @car.users.delete(current_user)
  if @car.save
    redirect  "/cars"
  else
    erb :"users/show"
  end
end