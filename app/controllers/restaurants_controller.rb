class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def top() end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def address
    @restaurant = Restaurant.find(params[:id])
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @reviws = Review.where(restaurant_id: @restaurant)
    @reviws.each { |review| review.destroy }
    @restaurant.destroy

    redirect_to restaurants_path, status: :see_other
  end
end
