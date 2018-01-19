require "sinatra"
require_relative "cashregister.rb"

get '/' do
	erb :home
end

post '/item_choice' do
    jeans = params[:jeans]
    sweatshirt = params[:sweatshirt]
    total = 0
    if jeans == "t"
    	total = total + item_name("Mens Jeans")
    end
    if sweatshirt == "t"
    	total = total + item_name("Mens Sweatshirt")
    end
    redirect '/result?total=' + total 
end

get '/result' do
	total = params[:total]
    erb :result, :locals => {:total => total}
end