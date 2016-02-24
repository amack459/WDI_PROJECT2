require "sinatra/reloader" if development?

require "sass/plugin/rack"

#set up the app to use SASS
Sass::Plugin.options[:style] = :compact
use Sass::Plugin::Rack 

# MAIL setup

mail_options = {
  address: "smtp.gmail.com",
  port: "587",
  domain: "localhost",
  
  # Calls environment variables from zshrc
  user_name: ENV['GMAIL_USERNAME'],
  password: ENV['GMAIL_PASSWORD'],
  authentication: "plain",
  enable_starttls_auto: true
}

Mail.defaults do
  delivery_method(:smtp, mail_options)
end


#set up the asset pipeline
register Sinatra::AssetPack
assets do 
  js :application, [
    '/js/app.js'
  ]
  css :application, [  
    '/bower_components/pure/pure-min.css',
    '/stylesheets/style.css'
  ]
  js_compression :jsmin    
  css_compression :simple   
end

# Some helper constants for path-centric logic
APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))
APP_NAME = APP_ROOT.basename.to_s

# Set the views directory
configure do 
  enable :sessions
  # set :session_secret, ENV['SESSION_SECRET'] || "this is a secret shhh"
  set :views, File.join(APP_ROOT, "app", "views")
end


# Set up the models, controllers and helpers
["models", "controllers", "helpers"].each do |folder|
  Dir[APP_ROOT.join("app", folder, "*.rb")].each { |file| require file }
end