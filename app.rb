#Random Pairs Web app

require "sinatra"
require_relative "rcp.rb"
enable :sessions
 |
get '/' do

erb :pairs
	
end

post '/p_pairs' do

	p = params[:p]
	redirect 'names?p=' + p


end