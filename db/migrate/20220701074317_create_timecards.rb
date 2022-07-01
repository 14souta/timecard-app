class CreateTimecards < ActiveRecord::Migration[6.0]
  def change
    create_table :timecards do |t|

      t.timestamps
    end
  end
end
