class CreateRarities < ActiveRecord::Migration[6.1]
  def change
    create_table :rarities do |t|
      t.integer :rar
      t.integer :holo

      t.timestamps
    end
  end
end
