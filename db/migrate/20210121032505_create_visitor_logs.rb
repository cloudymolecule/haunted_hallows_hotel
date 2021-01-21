class CreateVisitorLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :visitor_logs do |t|
      t.string :entry

      t.timestamps
    end
  end
end
