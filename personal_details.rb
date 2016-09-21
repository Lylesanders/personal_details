require 'sinatra'	# gem install sinatra

require 'sinatra'	# gem install sinatra

get '/' do # posts to screen
	erb :get_name
end

post '/the_user_name' do
	name = params[:user_name]
    redirect '/age?users_name=' + name
end

get '/age' do
	name = params[:user_name]
	erb :get_age, :locals=>{:name => name}
end
post '/age' do
	age = params[:age]
	name = params[:name]
	redirect '/3_fav_nums?name=' + name + "&age=" + age
end

get '/3_fav_nums' do
	name = params[:name]
	age = params[:age]
	erb :get_fav, locals =>{:name => name, :age => age}
end
post '3/_fav_nums' do
	age= params[:age]
	name = params[:name]
	fav1 = params[:user_fav1]
	fav2 = params[:user_fav2]
	fav3 = params[:user_fav3]
	"Your favorite numbers are #{fav1}, #{fav2} and #{fav3}!"
end
