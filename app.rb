require 'sinatra'

get '/' do 
	erb :get_name

end

post '/users_name' do 
	name = params[:user_name]  # user_name matches get_name <input type ="text" name ="user_name">
	redirect '/age?users_name=' + name # users_name matches get_name <form metopd "post" action"/users_name>
end

get '/age' do 
	name = params[:users_name]
	erb :get_age , :locals =>{:name => name}
end
