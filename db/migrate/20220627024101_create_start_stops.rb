class CreateStartStops < ActiveRecord::Migration[6.0]
  def change
    create_table :start_stops do |t|
      t.references :user, null: false, foreign_key: true
      t.references :start, null: false, foreign_key: true
      t.references :stop, null: false, foreign_key: true
      t.timestamps
    end
  end
end
