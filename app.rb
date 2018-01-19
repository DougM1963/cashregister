require "sinatra"
require_relative "cashregister.rb"

get '/' do
	erb :home
end

post '/item_choice' do
    jeans = params[:jeans]
    sweatshirt = params[:sweatshirt]
    socks = params[:socks]
    underwear = params[:underwear]
    shoes = params[:shoes]
    redirect '/result?jeans=' + jeans +'&sweatshirt=' + sweatshirt + '&socks=' + socks +'&underwear=' + underwear + '&shoes=' + shoes
end

get '/result' do
	jeans = params[:jeans]
    sweatshirt = params[:sweatshirt]
    socks = params[:socks]
    underwear = params[:underwear]
    shoes = params[:shoes]
    erb :result, :locals => {:jeans => jeans, :sweatshirt => sweatshirt, :socks => socks, :underwear => underwear, :shoes => shoes}
end