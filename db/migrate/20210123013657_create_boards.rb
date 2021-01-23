class CreateBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :boards do |t|
      t.integer :room_id
      t.integer :comment_id

      t.timestamps
    end
  end
end
