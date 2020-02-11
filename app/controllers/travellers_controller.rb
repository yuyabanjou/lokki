class TravellersController < ApplicationController
  def show
  	@traveller = Traveller.find(params[:id])
  end
end
