class CreateGuests < ActiveRecord::Migration[6.1]
  def change
    create_table :guests do |t|
      t.string :username
      t.string :email
      t.integer :age
      t.string :gender
      t.integer :investigator
      t.integer :believer
      t.integer :tech
      t.integer :psychic
      t.string :bio
      t.string :password_digest

      t.timestamps
    end
  end
end
