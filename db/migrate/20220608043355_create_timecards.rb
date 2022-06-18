class CreateTimecards < ActiveRecord::Migration[6.0]
  def change
    create_table :timecards do |t|
      t.time :start_time, null: false
      t.time :stop_time, null: false    
      
      t.timestamps
    end
  end
end
  