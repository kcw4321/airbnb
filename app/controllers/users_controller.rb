class UsersController < ApplicationController

  def profile
    @my_bookings = current_user.bookings
    @my_flats = current_user.flats
  end

  def edit
    current_user = User.find(:id)
  end

  def update
    current_user = User.find(:id)
    current_user.update(user_params)
  end

  private

    def user_params
      params.require(:user).permit(:name, :picture, :email, :password)
    end
end


