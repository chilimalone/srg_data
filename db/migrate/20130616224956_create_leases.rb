class CreateLeases < ActiveRecord::Migration
  def change
    create_table :leases do |t|
      t.string :name
      t.string :room
      t.string :contactInfo
      t.text :comments
      t.references :building

      t.timestamps
    end
    add_index :leases, :building_id
  end
end
