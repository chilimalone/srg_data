class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|

      t.timestamps
    end
  end
end
