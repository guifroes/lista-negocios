class CreateNegocios < ActiveRecord::Migration[5.2]
  def change
    create_table :negocios do |t|
      t.string :nome
      t.string :descricao
      t.string :site

      t.timestamps
    end
  end
end
