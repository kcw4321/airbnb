class FlatsController < ApplicationController

  # def index
  #   @flats = Flat.search(params[:search])
  # end
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
    @booking = Booking.new
    @booking.flat
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    redirect_to flat_path
  end

  def flat_params
    params.require(:flat).permit(:title, :description, :price, :street, :zipcode, :city)
  end

end
