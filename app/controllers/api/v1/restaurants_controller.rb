class Api::V1::RestaurantsController < ApplicationController
  skip_before_filter :verify_authenticity_token


  def index
    @restaurants = Restaurant.all

    render json: { restaurants: @restaurants }
  end

  def show
    @restaurant = Restaurant.find(params[:id])

    render json: { restaurant: @restaurant }
    # passing in user and message through ajax call in react
    # http://localhost:3000/api/v1/restaurants/3.json to see the object
  end
end
