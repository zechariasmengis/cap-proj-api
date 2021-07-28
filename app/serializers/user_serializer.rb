class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :phone, :email, :first_name, :last_name
  has_many :user_cards
end
