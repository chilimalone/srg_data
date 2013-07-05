class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :room_number

      t.timestamps
    end
    add_index :rooms
    add_reference :rooms, :properties, index: true
  end
end
