get '/rounds/:round_id' do
 erb :"/decks/#{params[:deck_id]}"
end

get '/rounds/:round_id/decks/:deck_id/cards/:card_id' do

end


post '/rounds' do

redirect :'/rounds/:round_id/decks/:deck_id/cards/:card_id/guesses/:guess_id'
end

get '/rounds/:round_id/decks/:deck_id/cards/:card_id/guesses/:guess_id' do
 # @guess =
 # @card =
 # erb :
end
