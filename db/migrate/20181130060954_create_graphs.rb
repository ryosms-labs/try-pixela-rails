class CreateGraphs < ActiveRecord::Migration[5.2]
  def change
    create_table :graphs do |t|
      t.text :graph_id, :null => false
      t.text :graph_name, :null => false
      t.text :unit, :null => false
      t.integer :graph_type, :null => false
      t.integer :color, :null => false
      t.integer :user_id, :null => false

      t.timestamps
    end
  end
end
