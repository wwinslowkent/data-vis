class GraphController < ApplicationController
  def index
  end

  def data
    @restaurants = Restaurant.all

    respond_to do |format|
      format.json {
        render :json => [15,24,13,4,1,1, 9, 2, 2, 8, 7, 6, 5, 4,3, 2, 1, 37]
      }
    end
  end
end
