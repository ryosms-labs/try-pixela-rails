class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_name, :null => false, :unique => true
      t.string :token, :null => false

      t.timestamps
    end
  end
end
