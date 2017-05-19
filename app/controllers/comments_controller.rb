get '/comments' do
  @comments = Comment.all

  erb :'comments/index'
end

get '/comments/new' do
  erb :'comments/new'
end

post '/comments' do
  @comment = Comment.new(params[:comment])

  if @comment.save
    redirect '/comments'
  else
    @errors = @comment.errors.full_messages
    erb :'comments/new'
  end
end

get '/comments/:id/edit' do
  @comment = Comment.find(params[:id])

  erb :'comments/edit'
end
