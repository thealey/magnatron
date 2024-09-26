class AddInvoiceNumberToTimesheet < ActiveRecord::Migration[7.2]
  def change
    add_column :timesheets, :invoice_number, :integer
  end
end
