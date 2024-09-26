class AddFieldsToUser < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :address, :text
    add_column :users, :full_name, :string
    add_column :users, :cell, :string
    add_column :users, :account_number, :string
    add_column :users, :routing_number, :string
  end
end
