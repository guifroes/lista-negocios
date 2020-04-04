class AddEmailNegocio < ActiveRecord::Migration[5.2]
  def change
    add_column :negocios, :email, :string
  end
end
