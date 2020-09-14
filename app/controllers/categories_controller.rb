class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @categories = Category.includes(dishes: [photo_attachment: :blob])
  end
end
