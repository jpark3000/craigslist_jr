get '/' do
  @categories = Category.all
  # Look in app/views/index.erb
  erb :index
end
