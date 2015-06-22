class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :check_in
      t.date :check_out
      t.boolean :accepted
      t.references :user, index: true, foreign_key: true
      t.references :flat, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
