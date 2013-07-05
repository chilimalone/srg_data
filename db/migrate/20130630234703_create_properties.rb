class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :street_1
      t.string :street_2
      t.string :city
      t.string :state
      t.string :zip
      t.text :comments

      t.timestamps
    end
    add_index :properties
    add_reference :properties, :individual, index: true
    add_reference :properties, :agent, index: true
  end
end
