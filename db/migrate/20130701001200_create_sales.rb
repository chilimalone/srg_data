class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :buyer
      t.boolean :hear
      t.date :closing_date
      t.string :company
      t.string :office_number
      t.references :buyer
      t.references :agent

      t.timestamps
    end
  end
end
