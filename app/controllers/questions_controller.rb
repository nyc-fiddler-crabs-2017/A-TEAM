get '/questions' do
  @question = Question.all

  erb :'questions/index'
end
