get '/' do
  @categories = Category.all
  # Look in app/views/index.erb
  erb :index
end


get '/category/:id' do
  @category = Category.find(params[:id])
  # @header = category.title
  @posts = @category.posts
  erb :category_posts
end


post "/create_post" do
  @post = Post.create(params)
  @category_title = Category.find(@post.category_id).title
  # @cat_id = params[:cat_id]
  # puts "#{params.inspect}"
  erb :new_post
end
