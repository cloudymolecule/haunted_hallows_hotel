class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :guest_id
      t.integer :room_id

      t.timestamps
    end
  end
end
