class CreateGuestsComments < ActiveRecord::Migration[6.1]
  def change
    create_table :guests_comments do |t|
      t.string :entry
      t.integer :guest_id
      t.integer :comment_id
      t.timestamps
    end
  end
end
