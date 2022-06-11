class CreateStarts < ActiveRecord::Migration[6.0]
  def change
    create_table :starts do |t|
      t.date :start_day,  null: false
      t.time :start_time, null: false
      t.timestamps
    end
  end
end
