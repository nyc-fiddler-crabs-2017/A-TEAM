get '/questions' do
  @question = Question.all

  erb :'questions/index'
end

get '/questions/new' do
  erb :'questions/new'
end
