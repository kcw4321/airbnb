class FlatsController < ApplicationController


  def index
    @flats = Flat.all
    if params[:city]
    @flats = Flat.where(city: params[:city])
    end
  end

  def show
    @flat = Flat.find(params[:id])
    @booking = Booking.new
    @booking.flat = @flat
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

 #  def search
 #    city = params[:city]
 #    flats = Flat.all.where(city: city)
 #    redirect_to results_path
 #  end

 # def results
 #    @flats = Flat.all.where(city: city)
 # end

end
