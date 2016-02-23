get '/login' do 
  @user = User.new
  erb :"sessions/login"
end 

post '/login' do 
  user = User.find_by_user_name(params[:user][:user_name])
  if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.id
    redirect "/users/#{user.id}"
  else
    redirect "/login"
  end
end



get '/logout' do 
  session.clear
  redirect '/login'
end