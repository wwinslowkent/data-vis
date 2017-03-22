class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all.order(created_at: :asc)
    if params[:search]
      @search = params[:search]
      @restaurants = Restaurant.where('name  ~* ?', "#{@search}")
    else
      @restaurants = Restaurant.all.order(created_at: :asc)
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @citations = @restaurant.citations

  end

  def data
    @restaurants = Restaurant.all

    respond_to do |format|
      format.json {
        render :json => [15,24,13,4,1,1, 9, 2, 2, 8, 7, 6, 5, 4,3, 2, 1, 37]
      }
  end

end
