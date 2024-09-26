class CreateBalances < ActiveRecord::Migration[7.2]
  def change
    create_table :balances do |t|
      t.integer :account_id
      t.integer :amount
      t.text :comment

      t.timestamps
    end
  end
end
