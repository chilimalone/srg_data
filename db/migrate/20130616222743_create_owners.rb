class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name
      t.string :contactInfo
      t.text :comments

      t.timestamps
    end
  end
end
