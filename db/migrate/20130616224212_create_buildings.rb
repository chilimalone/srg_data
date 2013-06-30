class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :address
      t.text :comments
      t.references :owner

      t.timestamps
    end
    add_index :buildings, :owner_id
  end
end
