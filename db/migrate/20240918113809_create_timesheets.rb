class CreateTimesheets < ActiveRecord::Migration[7.2]
  def change
    create_table :timesheets do |t|
      t.integer :user_id
      t.integer :client_id
      t.boolean :submitted
      t.boolean :paid
      t.date :submitted_date
      t.text :description

      t.timestamps
    end
  end
end
