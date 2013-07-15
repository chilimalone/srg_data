class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :street_1
      t.string :street_2
      t.string :city
      t.string :state
      t.string :zip
      t.text :comments
      t.references :individual
      t.references :agent

      t.timestamps
    end
  end
end
