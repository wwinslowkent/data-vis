class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all.order(created_at: :asc)
    if params[:search]
      @search = params[:search]
      @restaurants = Restaurant.where('title  ~* ?', "#{@search}")
    else
      @restaurants = Restaurant.all.order(created_at: :asc)
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @citations = @restaurant.citations

  end
end
