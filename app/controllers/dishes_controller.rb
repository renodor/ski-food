class DishesController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @dish = Dish.includes(photo_attachment: :blob).find(params[:id])
  end
end
