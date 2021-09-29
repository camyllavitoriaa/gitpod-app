class CreateClientes < ActiveRecord::Migration[6.1]
  def change
    create_table :clientes do |t|
      t.string :documento
      t.string :nome
      t.string :email
      t.string :telefone

      t.timestamps
    end
  end
end
