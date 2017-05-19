
get '/users/:user_id/votes/new' do
  @user = User.find(params[:user_id])

  erb :'votes/new'
end

post '/users/:user_id/votes' do
  existing_vote = Vote.find_by(user_id: current_user.id, voteable_type:params[:vote][:voteable_type] )
  if existing_vote
    existing_vote.destroy
  end
  @vote = current_user.votes.new(params[:vote])

  if @vote.save
    if @vote.voteable_type == "Question"
      redirect "/questions"
    else
      redirect "/questions/#{@vote.voteable.question.id}"
    end
  else
    @errors = @vote.errors.full_messages
    redirect '/questions'
  end
end
