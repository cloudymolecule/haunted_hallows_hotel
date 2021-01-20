class CreateGuests < ActiveRecord::Migration[6.1]
  def change
    create_table :guests do |t|
      t.string :nickname
      t.string :full_name
      t.integer :age
      t.string :gender
      t.integer :investigator
      t.integer :believer
      t.integer :tech
      t.integer :psychic
      t.string :bio

      t.timestamps
    end
  end
end
