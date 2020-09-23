class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @categories = Category.includes(dishes: [:translations, { photo_attachment: :blob }])
                          .order(order: :asc)
    render layout: 'home_page'
  end
end
