enable :sessions

get '/login' do
  erb :'/sessions/login'
end

post '/login' do
  @user = User.find_by(email: params[:email])
  if @user.authenticate(params[:password])
    session[:user_id] = @user.id
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
