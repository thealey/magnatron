class AddContactToClient < ActiveRecord::Migration[7.2]
  def change
    add_column :clients, :contact, :string
  end
end
