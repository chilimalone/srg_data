class CreateLeases < ActiveRecord::Migration
  def change
    create_table :leases do |t|
      t.references :building
      t.references :property
      t.references :agent
      t.date :move_out
      t.date :move_in
      t.boolean :welcome_home
      t.boolean :thank_you_sent
      t.date :dropped_date
      t.text :comment

      t.timestamps
    end

    add_index :leases, :building_id
    add_column :leases, :rental_amount, :decimal, precision: 2
    add_column :leases, :referal_amount, :decimal, precision: 2
    add_index :leases, :property_id
    add_index :leases, :agent_id
  end
end
