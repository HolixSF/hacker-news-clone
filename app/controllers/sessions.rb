post '/login' do
  user = User.authenticate(username: params[:username], password: params[:password])

  if user
    session[:user_id] = user.id
    redirect to home_url
  else
    redirect to home_url # see app/helpers/
  end
end

post '/logout' do
  session[:user_id] = nil
  @user = nil

  redirect to home_url # see app/helpers/
end
