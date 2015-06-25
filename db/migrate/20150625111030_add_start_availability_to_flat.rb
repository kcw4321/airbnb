class AddStartAvailabilityToFlat < ActiveRecord::Migration
  def change
    add_column :flats, :start_availability, :datetime
  end
end
