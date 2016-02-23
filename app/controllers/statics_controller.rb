get '/' do 
  erb :"statics/home"
end


get '/about' do
  erb :"statics/about" 
end

get '/contact' do
  erb :"statics/contact" 
end