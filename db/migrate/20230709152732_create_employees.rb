class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.references :store, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
