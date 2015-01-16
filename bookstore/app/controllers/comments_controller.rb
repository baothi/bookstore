class CommentsController < ApplicationController
  def new
  end

  def create
    @comment = Comment.new(comment_params)
    respond_to do |format|
      if @comment.save
        format.html { redirect_to book_url(@comment.commentable), notice: 'Book was successfully created.' }
        # format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        # format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

  def update
  end

  private
  def comment_params
    params.require(:comment).permit(:comment, :commentable_type, :commentable_id, :user_id)
  end
end