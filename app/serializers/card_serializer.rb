class CardSerializer < ActiveModel::Serializer
  attributes :id, :name, :card_type, :hp, :ability, :ability_dmg, :description, :image
end
