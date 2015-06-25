class AddGuestToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :guest, :integer
  end
end
