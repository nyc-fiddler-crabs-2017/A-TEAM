
get '/users/:user_id/votes/new' do
  @user = User.find(params[:user_id])

  erb :'votes/new'
end

post '/users/:user_id/votes' do
  user = current_user
  @vote = user.votes.new(params[:vote])

  if @vote.save
    redirect "/questions"
  else
    @errors = @vote.errors.full_messages
    erb :'votes/new'
  end
end
