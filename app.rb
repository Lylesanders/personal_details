require 'sinatra'

get '/' do 
	erb :get_name

end

post '/users_name' do 
	name = params[:user_name]
	redirect '/age?users_name' + name 
end

get '/age' do 
	name = params[:user_name]
	erb :get_age , :locals =>{:name => name}
end