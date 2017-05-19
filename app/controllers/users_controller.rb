get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  user = User.new(params[:user])
  if user.save
    session.clear
    session[:user_id] = user.id
    redirect "/users/#{user.id}"
  else
    @errors = user.errors.full_messages
    erb :'/users/new'
  end
end

get '/users/:id' do
  @user = User.find_by(id: params[:id])
  erb :'/users/show'
end

get '/users/:id/edit' do
  @user = User.find_by(id: params[:id])
  erb :'/users/edit'
end

put '/users/:id' do
  user = User.find_by(id: params[:id])
  user.update_attribute(params[:user])
  redirect '/'
end
