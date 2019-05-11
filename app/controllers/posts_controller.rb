# frozen_string_literal: true

class PostsController < ApplicationController
  load_and_authorize_resource
  def index
    # ordering posts by desencending order, newest will be displayed atop old
    @posts = Post.all.order('created_at DESC')
    # this is our filtering feature
    # when a button is clicked it passes in the respected param into and sets at the category
    # then we iterate over all the posts and display only the posts that have the same category_id as the :category
    if params[:category]
      category = params[:category]
      @posts = @posts.select do |post|
        category == Category.find(post.category_id).name
      end
    end
  end

  def new
    @post = Post.new
  end

  def filter; end

  def create
    # creates a new post with the data passed into the form
    @post = Post.new(post_params)
    # using the geocoder gem which uses the google api in order to translate a entered address (string) into a latitude longitude, latitude, longitude is extracted and set to the variable location.
    results = Geocoder.search(post_params[:address])
    location = results.first.coordinates
    # category is set from selection
    category = Category.find_by(name: params[:category])
    @post.category = category
    # user_id attribute of post is set to that of the current user
    @post.user_id = current_user.id
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.all
    # @comment = @post.comments.build
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to root_path
  end

  def send_email
    # sending an email to the author of the post
    @user = current_user
    @postuser = User.find(@post.user_id)
    # using mailer with our instance variables we have set above
    UserMailer.with(user: @user, postuser: @postuser, post: @post).interested_in_post_email.deliver_now
    redirect_to posts_path
  end

  def landingpage; end

  private

  def post_params
    params.require(:post).permit(:title, :content, :image, :address)
  end
end
