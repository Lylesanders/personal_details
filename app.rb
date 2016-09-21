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
 
post '/age' do 
 	age = params[:age]
 	name = params[:retrieved_name]
 	redirect '/fav_nums?name=' + name +"&age=" +age
end

get '/fav_nums' do
	name = params[:name]
	age = params[:age]
	erb :get_favs , :locals =>{:name => name, :age => age}
end
post '/fav_nums' do
  age = params[:age]
  name = params[:name]
  fav1 = params[:user_fav1]
  fav2 = params[:user_fav2]
  fav3 = params[:user_fav3]
  "Your favorite numbers are #{fav1}, #{fav2} and #{fav3}."
end