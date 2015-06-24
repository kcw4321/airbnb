class BookingsController < ApplicationController

  def index
   @bookings= Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
  end

  def create
      @booking = Booking.new(flat_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def edit
      @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(flat_params)
    redirect_to flat_path
  end



  def booking_params
    params.require(:booking).permit(:check_in, :check_out, :accepted, :user_id, :flat_id)
  end

end


