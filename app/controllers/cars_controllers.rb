#Index
get '/cars' do 
  @cars = Car.all
  erb :'sessions/index'
end

#New
get '/cars/new' do 
  @car = Car.new
  erb :'sessions/new'
end

#Create
post '/cars' do
  @car = Cars.new(params[:car])
  if @car.save
    redirect "/cars"
  else
    erb :'sessions/new'
  end
end

#Show
get '/cars/:id' do 
  @car = Car.find(params[:id])
  if @user 
    erb :'sessions/show'
  else
    redirect "/cars"
  end
end

#Edit/Update
put '/cars/:id' do
  @car = Car.find(params[:id])
  if @car.update(params[:car])
    redirect "/car/#{@car.id}"
  else
    erb :'cars/show'
  end
end

# #Delete
# destroy '/users/:id' do 
#   @user = User.find(params[:id])
#   @user.destroy
#   redirect("/users")
# end