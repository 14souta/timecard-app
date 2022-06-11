class CreateStops < ActiveRecord::Migration[6.0]
  def change
    create_table :stops do |t|
      t.date :stop_day, null: false
      t.time :stop_time, null: false
      t.timestamps
    end
  end
end
