class AddAvaibilityToFlat < ActiveRecord::Migration
  def change
    add_column :flats, :avaibility, :boolean
  end
end
