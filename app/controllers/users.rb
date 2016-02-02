# New
get '/users/new' do
  erb :'/users/new'
end

# Create
post '/users' do
  user = User.create(
    username: params[:username],
    password: params[:password])

  session[:user_id] = user.id

  # See README_Controllers for why we use the Post/Redirect/Get Pattern
  # instead of rendering a View in a post request
  redirect to '/posts'
end

# Edit

# Update

# Delete
