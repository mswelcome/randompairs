#Random Pairs Web app

require "sinatra"
require_relative "rcp.rb"
require_relative "smash.rb"


get '/' do

erb :pairs

end

post '/p_pairs' do

	qwerty = params[:qwerty]
	"Hello World #{qwerty}"
	x = rcp(qwerty)
	smash = smash(x)
	redirect '/results?smash=' + smash


end

 get '/results' do
	 smash = params[:smash]
 	 erb :results, locals: {smash: smash}
 end
