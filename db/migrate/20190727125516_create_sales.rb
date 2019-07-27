class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.string :titulo
      t.string :descricao
      t.float :valor
      t.string :historia
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
