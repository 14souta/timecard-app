class CreateStartTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :start_times do |t|
      t.time :start_work
      t.timestamps
    end
  end
end