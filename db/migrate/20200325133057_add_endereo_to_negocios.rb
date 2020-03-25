class AddEndereoToNegocios < ActiveRecord::Migration[5.2]
  def change
    add_column :negocios, :cep, :string
    add_column :negocios, :logradouro, :string
    add_column :negocios, :numero, :string
    add_column :negocios, :complemento, :string
    add_column :negocios, :bairro, :string
    add_column :negocios, :cidade, :string
    add_column :negocios, :estado, :string
  end
end
