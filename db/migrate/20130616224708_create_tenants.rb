class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :name
      t.string :room
      t.string :contactInfo
      t.text :comments
      t.references :building

      t.timestamps
    end
    add_index :tenants, :building_id
  end
end
