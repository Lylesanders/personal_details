require 'sinatra'	# gem install sinatra

get '/' do # posts to screen
	erb :get_name
end

post '/name' do
	name = params[:user_name]
    redirect 'age?users_name' + name
end

get '/age' do
	name = params[:user_name]
	erb :get_age, :locals=>{:name => name}
end