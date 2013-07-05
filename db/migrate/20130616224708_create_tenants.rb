class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.date :leased_signed
      t.date :lease_expired
      t.timestamps
    end
    add_index :tenants
    add_reference :tenants, :room, index: true
    add_reference :tenants, :individual, index: true
  end
end
