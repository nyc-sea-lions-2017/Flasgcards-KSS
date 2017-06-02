get "/login" do
  erb :"users/login"
end

post "/login" do
  user = User.find_by(username: params[:user][:username])
  if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.id
    redirect "/"
  else
    @errors = ["Username or Password is Incorrect"]
    erb :"users/login"
  end
end

get "/logout" do
  session.clear
  redirect "/"
end

# get "/user/new" do
#   erb :"users/new"
# end

# post "/users" do
#   user = User.new(params[:user])
#   if user.save
#     session[:user_id] = user.id
#     redirect "/"
#   else
#     @errors = user.errors.full_messages
#     erb :"users/new"
#   end
# end

# get "/users/:id" do
#   if session[:user_id] == params[:id].to_i
#     @user = User.find_by(id: params[:id])
#     @user_decks = @user.decks
#     erb :"users/show"
#   else
#     @errors = ["You must log in to enter this page"]
#     erb :"users/login"
#   end
# end
