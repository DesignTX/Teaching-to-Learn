# frozen_string_literal: true

class CommentsController < ApplicationController
  def index
    # setting the instance variable to all instances of the comment object
    @comment = Comment.all
  end

  def new
    # setting the post_id attribute of that object to be that of the params[:id], which is the id of the currrent post.
    @comment = Comment.new(post_id: params[:id])
    @post = Post.find(params[:post_id])
  end

  def create
    # creating a new comment with the params passed into the form field
    @comment = Comment.new(comment_params)
    # setting the user_id tot that of the user that created the comment
    @comment.user_id = current_user.id
    post = @comment.post
    if @comment.save
      flash[:notice] = 'comment created.'
      redirect_to post_path(post)
    else
      flash[:error] = 'Error creating comment.'
      redirect_to '/posts/'
    end
  end

  def edit
    # finding the comment selected
    @comment = Comment.find(params[:id])
  end

  def update
    # finding the comment selected and then updating with new params passed into the field
    @comment = Comment.find_by_id(params[:id])
    @comment.update(comment_params)
    flash[:notice] = 'Comment updated.'
    redirect_to '/posts'
  end

  def destroy
    # finding the comment, destroying the comment and then redirecting 
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to '/posts'
  end

    private

  def comment_params
    params.require(:comment).permit(:comment, :user_id, :post_id)
  end
  end
