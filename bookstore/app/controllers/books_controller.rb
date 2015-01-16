class BooksController < ApplicationController
  before_action :set_book, only: [:show]

  # GET /books
  # GET /books.json
  def index
    @books = Book.all
    # debugger
  end

  # GET /books/1
  # GET /books/1.json
  def show
    @new_comment = Comment.new
    @comments = @book.comments.order("updated_at DESC")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :description, :author_id, :category_id, :price)
    end
end
