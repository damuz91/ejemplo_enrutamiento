class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.references :employee, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :value

      t.timestamps
    end
  end
end
