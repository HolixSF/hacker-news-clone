# New
get '/posts/:id/comments/new' do
  @post = Post.find(params[:id])
  erb :'/comments/new'
end

# Create
post '/posts/:id/comments' do
  @comment = Comment.new(post_id: params[:id],
                         message: params[:message],
                         user_id: session[:user_id])

  if @comment.save
    redirect "/posts/#{params[:id]}"
  else
  end
end
