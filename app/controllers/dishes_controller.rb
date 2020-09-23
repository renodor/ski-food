class DishesController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :check_user_authorization, except: :show

  def show
    @dish = Dish.includes(photo_attachment: :blob).find(params[:id])
  end

  def new
    # new dishes need first to be created in the default locale, and then translated
    redirect_to new_dish_path(locale: I18n.default_locale) if locale != I18n.default_locale
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(cleaned_params)
    unless params[:dish][:category_id].empty?
      @dish.category = Category.find(params[:dish][:category_id])
    end
    if @dish.save
      redirect_to dish_path(@dish)
    else
      render :new
    end
  end

  def edit
    @dish = Dish.find(params[:id])
  end

  def update
    @dish = Dish.find(params[:id])
    if @dish.update(cleaned_params)
      redirect_to dish_path(@dish)
    else
      render :edit
    end
  end

  private

  def check_user_authorization
    return if current_user.admin

    flash.alert = 'Need to be Admin to access this page'
    redirect_to root_path
  end

  def dish_params
    params.require(:dish)
          .permit(:name, :price, :description, :order, :category, :photo, ingredients: [])
  end

  # remove empty strings from ingredients array
  def cleaned_params
    cleaned_params = dish_params
    cleaned_params[:ingredients]&.reject!(&:empty?)
    cleaned_params
  end
end
