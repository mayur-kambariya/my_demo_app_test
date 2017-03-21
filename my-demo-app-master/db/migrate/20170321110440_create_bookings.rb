class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :customer, index: true, foreign_key: true
      t.references :cleaner, index: true, foreign_key: true
      t.references :city, index: true, foreign_key: true
      t.time :time

      t.timestamps null: false
    end
  end
end
