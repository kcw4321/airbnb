class RemoveAvaibilityFromFlats < ActiveRecord::Migration
  def change
    remove_column :flats, :avaibility
  end
end
