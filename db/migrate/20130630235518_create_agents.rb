class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :fname
      t.string :lname

      t.timestamps
    end
    add_index :agents
  end
end
