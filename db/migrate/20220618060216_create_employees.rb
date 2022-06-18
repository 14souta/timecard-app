class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.references :timecard, null: false, foreign_key: true
      t.timestamps
    end
  end
end
