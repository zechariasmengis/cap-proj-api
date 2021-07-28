class AddNameToRarities < ActiveRecord::Migration[6.1]
  def change
    add_column :rarities, :name, :string
  end
end
