class TripsController < ApplicationController
  def index
    @trips = Trip.all
    render json: @trips
  end

  private

  def default_serializer_options
    {root: false}
  end
end
