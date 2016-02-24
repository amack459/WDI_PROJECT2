#get the login form
get '/login' do 
  @user = User.new 
  erb :"sessions/login"
end 


#handle form
post '/login' do 
  #find user by username
  user = User.find_by_email(params[:user][:email])
  #if the is a user, checkk their password is correct
  if user && user.authenticate(params[:user][:password])
    #log the user in 
    session[:user_id] = user.id
    flash[:success] = "Welcome!"
    redirect "/"
  else
    #otherwise render login
    flash[:danger] = "Username or password is incorrect"
    redirect "/login"
  end
end


#end session
get '/logout' do 
  session.clear
  redirect '/login'
end


# /users/#{user.id}