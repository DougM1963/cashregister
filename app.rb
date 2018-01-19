require "sinatra"
#require_relative "bookisbn.rb"

get '/' do
	erb :home
end

post '/item_choice' do
    item = params[:item]
    redirect '/result?item=' + item
end

get '/result' do
	item = params[:item]
    erb :result, :locals => {:item => item}
end