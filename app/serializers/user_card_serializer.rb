class UserCardSerializer < ActiveModel::Serializer
  attributes :id, :card_id, :rarity_id
  belongs_to :card
end
