class CreateClients < ActiveRecord::Migration[7.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :user_id
      t.string :address
      t.string :default_rate

      t.timestamps
    end
  end
end
