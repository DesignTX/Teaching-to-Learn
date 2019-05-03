# frozen_string_literal: true

class PostsController < ApplicationController
  load_and_authorize_resource
  def index
    @posts = Post.all.order("created_at DESC")
    if params[:category]
      category = params[:category]
      @posts = @posts.select do |post|
        category == Category.find(post.category_id).name
      end
    end
  end

  def new
    @post = Post.new
    flash[:notice] = "Thanks for making a lesson!"
  end

  def filter; end

  def create
    @post = Post.new(post_params)
    category = Category.find_by(name: params[:category])
    @post.category = category
    @post.user_id = current_user.id
    if @post.save
      redirect_to @post
    else
      raise
      render 'new'
      end
      
  end

  def show
    @post = Post.find(params[:id])
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
    @user = current_user
    @postuser = User.find(@post.user_id)
    UserMailer.with(user: @user, postuser: @postuser, post: @post).interested_in_post_email.deliver_now
    redirect_to posts_path
    # redirect to a prompt that tells the user they have been successful sending an email and the poster will be in contact with them soon
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :image)
  end
end
