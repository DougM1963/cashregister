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
    puts jeans, sweatshirt, socks, underwear, shoes
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
    payment = params[:payment]
    total = params[:total]
    gtotal = params[:gtotal]
    jeans = params[:jeans]
    sweatshirt = params[:sweatshirt]
    socks = params[:socks]
    underwear = params[:underwear]
    shoes = params[:shoes]
    puts jeans, sweatshirt, socks, underwear, shoes, payment
    redirect '/final?payment=' + payment + '&total=' + total + '&gtotal=' + gtotal + '&jeans=' + jeans + '&sweatshirt=' + sweatshirt + '&socks=' + socks +'&underwear=' + underwear + '&shoes=' + shoes 
end

get '/final' do
    payment = params[:payment]  
    total = params[:total]
    gtotal = params[:gtotal]
	jeans = params[:jeans]
    sweatshirt = params[:sweatshirt]
    socks = params[:socks]
    underwear = params[:underwear]
    shoes = params[:shoes]
    erb :final, :locals => {:payment => payment, :total => total, :gtotal => gtotal, :jeans => jeans, :sweatshirt => sweatshirt, :socks => socks, :underwear => underwear, :shoes => shoes}
end