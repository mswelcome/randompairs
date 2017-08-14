#Random Pairs Web app

require "sinatra"
require_relative "rcp.rb"
enable :sessions

get '/' do

erb :pairs

end

post '/p_pairs' do

	names = [:names]
	p = rcp(names)
	smash = smash(p)
	redirect 'names?smash' + smash


end

 get '/results' do
	 smash = [:smash]
 	 erb :names, locals: {smash: smash}
 end
