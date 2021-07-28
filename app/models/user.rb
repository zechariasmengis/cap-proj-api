class User < ApplicationRecord
    has_secure_password

    has_many :user_cards
    has_many :cards, through: :user_cards

    validates :username, uniqueness: true
    validates :email, uniqueness: true
end
