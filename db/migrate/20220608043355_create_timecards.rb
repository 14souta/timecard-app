class CreateTimecards < ActiveRecord::Migration[6.0]
  def change
    create_table :timecards do |t|
      t.references :start   
      t.references :stop    
      t.references :employee
      t.timestamps
    end
  end
end
  