class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.integer :floor
      t.integer :number
      t.string :board
      t.boolean :do_not_disturb
      t.string :note
      t.integer :hotel_id

      t.timestamps
    end
  end
end
