class Createcenters < ActiveRecord::Migration
  def change
    create_table :centers do |t|
      t.text :name
      t.text :address1
      t.text :address2
      t.text :city
      t.text :state
      t.text :zipcode

      t.timestamps
    end
  end
end
