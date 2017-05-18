get '/' do
  "Hello World!"  
end

# index
get '/contacts' do
  "Contacts index action"
end

# new
get '/contacts/new' do
  "Contacts new action"
end

# create
post '/contacts' do
  "Contacts create action"
end

# show
get '/contacts/:id' do
  "Contacts show action"
end

# edit
get '/contacts/:id/edit' do
  "Contacts edit action"
end

#update
patch '/contacts/:id' do
  "Contacts update action"
end

put '/contacts/:id' do
  "Contacts update action"
end

# delete
delete '/contacts/:id' do
  "Contacts delete action"
end