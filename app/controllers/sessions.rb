enable :sessions

get '/login' do
  erb :'/sessions/login'
end

post '/login' do
  @user = User.authenticate(params[:email], params[:password])
  if @user
    session[:user_id] = @user.id
    @channels = @user.channels
    erb :'/users/show'
  else
    @errors = "Invalid email or password"
    erb :'/sessions/login'
  end
end

delete '/logout' do
  session.clear
  redirect '/'
end
