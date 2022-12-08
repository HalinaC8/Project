class AddDropDownMenu < ActiveRecord::Migration[7.0]
  def change
    add_column :pages, :status, :string 
    add_column :pages, :condition, :string
    add_column :pages, :box, :string
  end
end
