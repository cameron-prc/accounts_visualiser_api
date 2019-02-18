class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.decimal :amount, null: false
      t.string :details, null: false
      t.date :date, null: false
      t.string :type, null: false

      t.timestamps
    end
  end
end
