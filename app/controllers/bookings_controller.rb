class BookingsController < ApplicationController
  before_action :set_booking, only: [:show]

  def index
   @bookings= Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
      @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to flat_booking_path(@booking)
    else
      render :new
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(update_booking_params)
    redirect_to :back
  end

  private

  def set_booking
    @flat = Flat.find(params[:flat_id])
  end

  def update_booking_params
    params.require(:booking).permit(:accepted)
  end

  def booking_params
    params.require(:booking).permit(:check_in, :check_out)
  end
end


