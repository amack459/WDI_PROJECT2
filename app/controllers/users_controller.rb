#Index
get '/users' do 
  @users = User.all
  erb :'users/index'
end

#New
get '/users/new' do 
  @user = User.new
  erb :'users/new'
end

#Create
post '/users' do
  @user = User.new(params[:user])
  if @user.save
    redirect "/users"
  else
    erb :'users/new'
  end
end

#Show
get '/users/:id' do 
  @user = User.find(params[:id])
  if @user 
    erb :'users/show'
  else
    redirect "/users"
  end
end

get '/users/:id/wishlist' do
  @user = User.find(params[:id])
  erb :"users/show"
end

#Edit/Update
put '/users/:id' do
  @user = User.find(params[:id])
  if @user.update(params[:user])
    redirect "/users/#{@user.id}"
  else
    erb :'users/show'
  end
end

# #Delete
delete '/users/:id/wishlist' do 
  current_user.cars.delete(params[:id])
  redirect "/users/#{current_user.id}/wishlist"
end