class CreateTimecards < ActiveRecord::Migration[6.0]
  def change
    create_table :timecards do |t|
      t.datetime :start_time, null: false
      t.datetime :stop_time, null: false

      t.timestamps
    end
  end
end
