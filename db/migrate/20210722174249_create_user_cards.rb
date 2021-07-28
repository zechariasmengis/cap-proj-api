class CreateUserCards < ActiveRecord::Migration[6.1]
  def change
    create_table :user_cards do |t|
      t.integer :user_id
      t.integer :card_id
      t.integer :rarity_id

      t.timestamps
    end
  end
end
