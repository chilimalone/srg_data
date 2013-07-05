class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :buyer
      t.boolean :hear
      t.date :closing_date
      t.string :company
      t.string :office_number

      t.timestamps
    end
    add_index :sales
    add_references :sales, :buyer, index: true
    add_references :sales, :agent, index: true
  end
end
