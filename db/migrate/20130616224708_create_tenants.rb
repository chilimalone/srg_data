class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.date :leased_signed
      t.date :lease_expired
      t.timestamps
      t.references :room
      t.references :individual
    end
  end
end
