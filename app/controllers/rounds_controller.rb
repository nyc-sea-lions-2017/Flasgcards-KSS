get '/rounds/new' do
  @round = Round.new()
end

get '/decks/:deck_id' do
  @user = User.find_by(user_id: session[:id])
  @round = Round.new(user_id: @user.id , deck_id: params[:deck_id], date: Date.today)
 erb :"/decks/#{params[:deck_id]}"
end

get '/rounds/:round_id/guesses/new' do
 erb :guess/new
end


post '/rounds/:round:id/cards/:card_id/guesses' do
@guess = Guess.new(guess: params[:guess], round_id: params[:round_id], card_id: params[:card_id] )
erb :'guess/answer'
end

get '/rounds/:round_id/decks/:deck_id/cards/:card_id/guesses/:guess_id' do
 # @guess =
 # @card =
 # erb :
end
