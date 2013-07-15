class RemoveAgentFromTours < ActiveRecord::Migration
  def up
    change_table :tours do |t|
      t.remove :agent_id
    end
  end

  def down
    change_table :tours do |t|
      t.references :tours, :agent
    end
  end
end
