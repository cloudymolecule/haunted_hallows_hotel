class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :entry
      t.integer :guest_id

      t.timestamps
    end
  end
end
