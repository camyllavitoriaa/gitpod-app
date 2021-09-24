class CreateCarros < ActiveRecord::Migration[6.1]
  def change
    create_table :carros do |t|
      t.string :placa
      t.string :modelo
      t.string :chassi
      t.integer :ano

      t.timestamps
    end
  end
end
