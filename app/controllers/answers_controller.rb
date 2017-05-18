post '/questions/:question_id/answers' do
  answer = current_user.answers.create(params[:answer])
  redirect "/questions/#{params[:question_id]}"
end

get '/questions/:question_id/answers/:id/edit' do
  @answer = Answer.find_by(id: params[:id])
  if @answer.user_id == current_user.id
    erb :"/answers/edit"
  else
    redirect "/questions/#{params[:question_id]}"
  end
end

put '/questions/:question_id/answers/:id' do
  answer = Answer.find_by(id: params[:id])
  if answer.user_id == current_user.id
    answer.update(params[:answer])
    redirect "/questions/#{params[:question_id]}"
  else
    redirect "/questions/#{params[:question_id]}"
  end
end

delete '/questions/:question_id/answers/:id' do
  answer = Answer.find_by(id: params[:id])
  if answer.user_id == current_user.id
    answer.destroy
    redirect "/questions/#{params[:question_id]}"
  else
    redirect "/questions/#{params[:question_id]}"
  end
end
