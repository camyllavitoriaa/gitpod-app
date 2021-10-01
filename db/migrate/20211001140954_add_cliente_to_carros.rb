class AddClienteToCarros < ActiveRecord::Migration[6.1]
  def change
    add_reference :carros, :cliente, foreign_key: true
  end
end
