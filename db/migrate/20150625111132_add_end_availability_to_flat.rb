class AddEndAvailabilityToFlat < ActiveRecord::Migration
  def change
    add_column :flats, :end_availability, :datetime
  end
end
