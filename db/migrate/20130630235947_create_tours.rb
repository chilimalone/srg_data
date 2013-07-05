class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.date :date
      t.integer :room_number
      t.text :comment

      t.timestamps
    end
    add_reference :tours, :agent, index: true
    add_index :tours
    add_reference :tours, :client, index: true
    add_reference :tours, :property
  end
end
