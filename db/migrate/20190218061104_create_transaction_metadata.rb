class CreateTransactionMetadata < ActiveRecord::Migration[5.2]
  def change
    create_table :transaction_metadata do |t|
      t.references :transaction, foreign_key: true
      t.string :field
      t.string :value

      t.timestamps
    end
  end
end
