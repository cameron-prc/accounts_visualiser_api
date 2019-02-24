class CreateFilters < ActiveRecord::Migration[5.2]
  def change
    create_table :filters do |t|
      t.category :references
      t.string :field
      t.string :filter

      t.timestamps
    end
  end
end
