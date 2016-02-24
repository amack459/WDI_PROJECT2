helpers do 
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def is_logged_in?
    !!current_user
  end

  def current_car
    @current_car ||= Car.find(params[:car_id])
  end

  def authorize!
    unless is_logged_in?
      flash[:danger] = "You must log in to view this page!"
      redirect '/login'
    end  
  end

  def is_dealer?
    current_user.user_type == 'dealer'
  end
end
