class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout "application_v2"
  before_action :set_categories, :authenticate_user!

  def set_categories
    @categories = Category.all
  end
end
