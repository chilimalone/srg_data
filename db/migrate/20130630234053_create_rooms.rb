class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :room_number
      t.references :properties

      t.timestamps
    end
    add_index :rooms, :room_number
  end
end
