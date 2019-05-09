# frozen_string_literal: true

class CommentsController < ApplicationController
  def index
    @comment = Comment.all 
  end

  def new
    @comment = Comment.new(post_id: params[:user_id])
    @post = Post.find(params[:post_id])
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    post = @comment.post
    if @comment.save
      flash[:notice] = "comment created."
      redirect_to post_path(post)
    else
      flash[:error] = "Error creating comment."
      redirect_to '/posts/'
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find_by_id(params[:id])
    @comment.update(comment_params)
    flash[:notice] = "Comment updated."
    redirect_to '/posts'
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to '/posts'
  end

  private 

    def comment_params
      params.require(:comment).permit(:comment, :user_id, :post_id)
    end
  end
