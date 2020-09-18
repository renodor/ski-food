class DishesController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    @dish = Dish.includes(photo_attachment: :blob).find(params[:id])
  end

  def edit
    @dish = Dish.find(params[:id])
  end

  def update
    dish_params[:ingredients]
    @dish = Dish.find(params[:id])
    cleaned_params = dish_params
    cleaned_params[:ingredients] = cleaned_params[:ingredients].split(',')
    @dish.update(cleaned_params)
    redirect_to dish_path(@dish)
  end

  private

  def dish_params
    params.require(:dish).permit(:name, :description, :ingredients, photo: [])
  end
end
