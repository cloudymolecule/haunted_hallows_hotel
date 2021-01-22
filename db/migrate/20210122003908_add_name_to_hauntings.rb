class AddNameToHauntings < ActiveRecord::Migration[6.1]
  def change
    add_column :hauntings, :name, :string
  end
end
