# Index
get '/posts' do
  @posts = Post.all
  if current_user
    erb :'/posts/index'
  else
    erb :'/posts/index'
  end
end

# New
get '/posts/new' do
  erb :'/posts/new'
end

# Create
post '/posts' do
  @post = Post.new(title: params[:title],
                   content: params[:content],
                   user_id: session[:user_id])
  if @post.save
    redirect '/posts'
  else
    @errors = @post.errors.full_messages
  end
end

# Show
get '/posts/:id' do
  puts "test ********"
  puts params
  @post = Post.find(params[:id])
  erb :'/posts/show'
end

# Update
put '/posts/:id' do
  if current_user
    post = Post.find(params[:id])
    post.update_attributes(points: (post.points+1))
    redirect '/posts'
  else
    redirect '/users/new'
  end
end
