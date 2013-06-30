class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.text :comments
      t.string :file_number
      t.text :source
      t.string :company
      t.float :price
      t.date :date_received
      t.boolean :confirmed
      t.text :client_comments
      t.reference :individual

      t.timestamps
    end
    add_index :clients
  end
end
