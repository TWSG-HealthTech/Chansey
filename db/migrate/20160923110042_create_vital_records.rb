class CreateVitalRecords < ActiveRecord::Migration
  def change
    create_table :vital_records do |t|
      t.decimal :height
      t.decimal :weight
      t.integer :pulse
      t.decimal :temperature
      t.integer :bp_high
      t.integer :bp_low

      t.timestamps null: false
    end
  end
end
