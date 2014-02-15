class TripsController < ApplicationController
  def index
    if params[:top] == 'top'
      render json: Trip.top
    else
      render json: Trip.all
    end
  end

  private

  def default_serializer_options
    {root: false}
  end
end
