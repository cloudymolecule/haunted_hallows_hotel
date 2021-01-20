class CreateHauntings < ActiveRecord::Migration[6.1]
  def change
    create_table :hauntings do |t|
      t.boolean :public
      t.string :description
      t.integer :type
      t.string :location
      t.integer :room_id
      t.integer :guest_id

      t.timestamps
    end
  end
end
