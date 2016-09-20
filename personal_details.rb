require 'sinatra'	# gem install sinatra

get '/' do # posts to screen
	erb :get_name
end