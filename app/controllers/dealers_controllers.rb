#Index
get '/dealers' do 
  @dealers = Dealer.all
  erb :'dealers/index'
end

#New
get '/dealers/new' do 
  @dealer = Dealer.new
  erb :'dealers/new'
end

#Create
post '/dealers' do
  @dealer = Dealers.new(params[:dealer])
  if @dealer.save
    redirect "/dealers"
  else
    erb :'dealers/new'
  end
end

#Show
get '/dealers/:id' do 
  @dealer = Dealer.find(params[:id])
  if @dealer 
    erb :'dealers/show'
  else
    redirect "/dealers"
  end
end

#Edit/Update
put '/dealers/:id' do
  @dealer = Dealer.find(params[:id])
  if @dealer.update(params[:dealer])
    redirect "/dealers/#{@dealer.id}"
  else
    erb :'dealers/show'
  end
end

#Delete
# destroy "/dealers/:id" do 
#   @dealer = Dealer.find(params[:id])
#   @dealer.destroy
#   redirect("/dealers")
# end