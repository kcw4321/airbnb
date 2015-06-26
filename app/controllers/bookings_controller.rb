class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :update, :destroy]

  def index
    @bookings = current_user.bookings
  end

  def show
    @flat = @booking.flat
  end

  def create
      @booking = Booking.new(booking_params)
      @booking.user = current_user
    if @booking.save
      redirect_to flat_booking_path(@booking.flat, @booking)
    else
      render :new
    end
  end

  def update
    @booking.update(update_booking_params)
    redirect_to :back
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def update_booking_params
    params.require(:booking).permit(:accepted)
  end

  def booking_params
    params.require(:booking).permit(:check_in, :check_out, :flat_id)
  end
end


