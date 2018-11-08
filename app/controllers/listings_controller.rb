class ListingsController < ApplicationController

  def index
    @listings = Listing.all_listings
    render json: @listings
  end

  def show
    @listing = Listing.listing(params[:id])
    render json: @listing
  end

  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      render json: {success: 'success'}
    else
      render json: @listing.errors, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end

end
