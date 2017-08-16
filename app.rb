#Random Pairs Web app

require "sinatra"
require_relative "rcp.rb"
require_relative "smash.rb"
enable :sessions

get '/' do

erb :pairs

end

post '/p_pairs' do

	qwerty = params[:qwerty]
	session[:x] = rcp(qwerty)
	redirect '/check?'


end

 get '/check' do

 	 erb :check, locals: {x: session[:x]}

 end

 post '/p_check' do
 		gat = params[:gat]
		smash = smash(gat)
		redirect '/results?smash=' + smash
 end

 get '/results' do
	 smash = params[:smash]
	 erb :results, locals: {smash: smash}
 end
