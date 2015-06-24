class BookingsController < ApplicationController
  before_action :set_flat, only: [:create]
  before_action :set_booking, only: [:show, :update]

  def index
    @bookings = Booking.all
  end

  def show
    @flat = @booking.flat
  end

  def create
      @booking = Booking.new(booking_params)
      @booking.flat = @flat
      @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
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

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end

  def update_booking_params
    params.require(:booking).permit(:accepted)
  end

  def booking_params
    params.require(:booking).permit(:check_in, :check_out)
  end
end
