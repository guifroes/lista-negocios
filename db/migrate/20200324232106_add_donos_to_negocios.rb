class AddDonosToNegocios < ActiveRecord::Migration[5.2]
  def change
    add_column :negocios, :user_id, :integer
    add_index  :negocios, :user_id
  end
end
