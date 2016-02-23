get '/register' do 
  @user = User.new
  erb :'authorizations/register'
end

post '/register' do 
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.user_id
    flash[:success] = "Thanks for registering!"
    redirect '/users'
  else
    erb :'authorizations/register'
  end
end