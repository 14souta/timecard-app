class CreateTimecards < ActiveRecord::Migration[6.0]
  def change
    create_table :timecards do |t|
      t.integer :start_work_id
      t.integer :stop_work_id
      t.timestamps
    end
  end
end
  