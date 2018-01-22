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

post '/collection' do
    jeans = params[:jeans]
    sweatshirt = params[:sweatshirt]
    socks = params[:socks]
    underwear = params[:underwear]
    shoes = params[:shoes]
    payment = params[:payment]
    redirect '/final?jeans=' + jeans + '&sweatshirt=' + sweatshirt + '&socks=' + socks +'&underwear=' + underwear + '&shoes=' + shoes + '&payment=' + payment
end

get '/final' do
	jeans = params[:jeans]
    sweatshirt = params[:sweatshirt]
    socks = params[:socks]
    underwear = params[:underwear]
    shoes = params[:shoes]
    payment = params[:payment]
    erb :final, :locals => {:jeans => jeans, :sweatshirt => sweatshirt, :socks => socks, :underwear => underwear, :shoes => shoes, :payment => payment}
end