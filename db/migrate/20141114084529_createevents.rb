class Createevents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :name
      t.text :description
      t.text :speaker
      t.date :date
      t.time :time
      t.integer :center_id

      t.timestamps
    end
  end
end
