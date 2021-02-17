class RestaurantsController < ApplicationController
  
  before_action :select_task, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @restaurant = Restaurant.all
  end
  
  def new
    @restaurant = Restaurant.new
  end
  
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end
  
  def restaurant_params                                                                                                                                                                                               
    params.require(:restaurant).permit(:name, :address, :category)                                                                                                                                                  
  end                                                                                                                                                                                                           
  
  def select_task                                                                                                                                                                                               
    @restaurant = Restaurant.find(params[:id])                                                                                                                                                                              
  end                                                                                                                                                                                                           
end   
