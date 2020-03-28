class AddContatos < ActiveRecord::Migration[5.2]
  def change
    add_column :negocios, :facebook, :string
    add_column :negocios, :instagram, :string
    add_column :negocios, :whatsapp, :string
    add_column :negocios, :telefone, :string
  end
end
