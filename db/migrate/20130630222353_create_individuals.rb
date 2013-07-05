class CreateIndividuals < ActiveRecord::Migration
  def change
    create_table :individuals do |t|
      t.string :fname
      t.string :lname
      t.string :phone
      t.string :street_1
      t.string :string_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :email

      t.timestamps
    end
    add_index :individuals
  end
end
