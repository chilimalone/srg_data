class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.date :date
      t.integer :room_number
      t.text :comment
      t.references :agent
      t.references :client
      t.references :property

      t.timestamps
    end
    add_index :tours, :agent_id
  end
end
