get '/register' do 
  @user = User.new
  erb :'authorizations/register'
end

post '/register' do 
  @user = User.new(params[:user])
  if @user.save
    session[:user_name] = @user.user_name
    redirect '/users'
  else
    erb :'authorizations/register'
  end
end