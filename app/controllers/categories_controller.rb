class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :check_user_authorization, except: :index

  def index
    @categories = Category.includes(dishes: [:translations, { photo_attachment: :blob }])
                          .order(order: :asc)
    render layout: 'home_page'
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to root_path
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

  def category_params
    params.require(:category).permit(:name)
  end
end
