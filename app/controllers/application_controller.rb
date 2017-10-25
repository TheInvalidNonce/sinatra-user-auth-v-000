class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :views, Proc.new { File.join(root, "../views/") }

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :home
  end

  # render the sign-up form view
  get '/registrations/signup' do
    erb :'/registrations/signup'
  end

  # gets the new user's info from the params hash, creates a new user, signs them in, and then redirects them
  post '/registrations' do

    redirect '/users/home'
  end

  # render the login form
  get '/sessions/login' do
    erb :'sessions/login'
  end

  post '/sessions' do

    redirect '/users/home'
  end

  get '/sessions/logout' do

    redirect '/'
  end

  get '/users/home' do

    erb :'/users/home'
  end

end
