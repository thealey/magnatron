class CreateTimesheetItems < ActiveRecord::Migration[7.2]
  def change
    create_table :timesheet_items do |t|
      t.integer :timesheet_id
      t.date :item_date
      t.float :hours
      t.text :comment
      t.integer :rate

      t.timestamps
    end
  end
end
