class CreateHauntings < ActiveRecord::Migration[6.1]
  def change
    create_table :hauntings do |t|
      t.boolean :common
      t.string :description
      t.integer :classification
      t.string :location
      t.integer :room_id
      t.integer :guest_id

      t.timestamps
    end
  end
end
