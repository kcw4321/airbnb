class BookingsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
  end

  def show
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.find(params[:id])
  end

  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
    # if @booking.save
    #   @booking.update(user_id: current_user.id)
    #   redirect_to root_path
    # else
    #   render :new
    # end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update_attributes(update_booking_params)
    redirect_to :back
  end

  private

  def update_booking_params
    params.require(:booking).permit(:accepted)
  end

  def booking_params
    params.require(:booking).permit(:check_in, :check_out)
  end
end
