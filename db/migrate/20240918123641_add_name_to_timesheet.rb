class AddNameToTimesheet < ActiveRecord::Migration[7.2]
  def change
    add_column :timesheets, :name, :string
  end
end
