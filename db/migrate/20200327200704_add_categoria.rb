class AddCategoria < ActiveRecord::Migration[5.2]
  def change
    add_column :negocios, :categoria_id, :integer
    add_index  :negocios, :categoria_id
  end
end
