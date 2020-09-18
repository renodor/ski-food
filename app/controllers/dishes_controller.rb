class DishesController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    @dish = Dish.includes(photo_attachment: :blob).find(params[:id])
  end

  def edit
    @dish = Dish.find(params[:id])
  end

  def update
    @dish = Dish.find(params[:id])
    if @dish.update(dish_params)
      redirect_to dish_path(@dish)
    else
      render :edit
    end
  end

  private

  def dish_params
    params.require(:dish).permit(:name, :description, ingredients: [], photo: [])
  end
end
