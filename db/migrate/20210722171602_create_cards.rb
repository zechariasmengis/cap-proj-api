class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :card_type
      t.integer :hp
      t.string :ability
      t.integer :ability_dmg
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
