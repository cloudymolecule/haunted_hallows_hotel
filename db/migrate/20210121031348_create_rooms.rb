class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.integer :floor
      t.integer :number
      t.integer :max_guests
      t.string :board
      t.boolean :do_not_disturb
      t.string :note

      t.timestamps
    end
  end
end
