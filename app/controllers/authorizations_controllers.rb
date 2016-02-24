get '/register' do 
  @user = User.new
  erb :'authorizations/register'
end

post '/register' do
  @user = User.new(params[:user])

  p "NEW USER: "
  p @user

  if params[:user][:user_type] == "dealer"
    @dealer = Dealer.create(params[:dealer])
    @user.dealer = @dealer
  end

  if @user.save
    session[:user_id] = @user.id
    flash[:success] = "Thanks for registering!"
    redirect '/cars'
  else
    p "USER FAIL!"
    erb :'authorizations/register'
  end
end