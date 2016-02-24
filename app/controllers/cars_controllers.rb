#Index
get '/cars' do 
  @cars = Car.all
  erb :'dealers/index'
end

#New
get '/cars/new' do 
  @car = Car.new
  erb :'dealers/new'
end

#Create
post '/cars' do
  authorize!
  @car = Car.new(params[:car])
  if @car.save
    @car.users << current_user
    redirect "/cars"
  else
    erb :'dealers/new'
  end
end

#Show
get '/cars/:id' do 
  @car = Car.find(params[:id])
  if @user 
    erb :'dealers/show'
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
    erb :'dealers/show'
  end
end

# #Delete
# destroy '/users/:id' do 
#   @user = User.find(params[:id])
#   @user.destroy
#   redirect("/users")
# end