class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @categories = Category.includes(dishes: [photo_attachment: :blob])
    render layout: 'home_page'

    if ok
      'blabla'
    end
  end
end
