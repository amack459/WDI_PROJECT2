get '/register' do 
  @user = User.new
  erb :'authorizations/register'
end

post '/register' do
  @user = User.new(params[:user])

  if params[:user][:user_type] == "dealer"
    @dealer = Dealer.new(params[:dealer])
  end

  if @user.save
    
    if @dealer
      @dealer.save
      @user.dealer = @dealer
    end

    session[:user_id] = @user.id
    flash[:success] = "Thanks for registering!"
    redirect '/cars'
  else
    erb :'authorizations/register'
  end
end