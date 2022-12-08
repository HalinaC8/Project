class CreatePages < ActiveRecord::Migration[7.0]
  def change
    create_table :pages do |t|
      t.string :name
      t.string :brand
      t.string :size
      t.string :price1
      t.string :price2

      t.timestamps
    end
  end
end
