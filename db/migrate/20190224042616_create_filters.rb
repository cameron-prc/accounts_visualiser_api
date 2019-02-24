class CreateFilters < ActiveRecord::Migration[5.2]
  def change
    create_table :filters do |t|
      t.references :category, foreign_key: true
      t.string :field
      t.string :value

      t.timestamps
    end
  end
end
