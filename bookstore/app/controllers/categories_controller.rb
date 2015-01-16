class CategoriesController < ApplicationController
  before_action :set_books, only: [:show]

  # GET /categories
  # GET /categories.json
  def index
    @books_a  = Book.avaiable   
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_books
      @category = Category.find(params[:id])
      # @books = Book.wheride(category_id: params[:id])
      @books = @category.books.avaiable
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name)
    end
end
