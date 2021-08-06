class UserCardsController < ApplicationController

	def index
		@user_cards = UserCard.where(user_id: @user.id)
		render json: @user_cards, status: :ok
	end

	def open_pack
		arr_of_user_cards = (1..6).to_a.map do |num|
				rand_card_id = Card.ids.sample
				rand_rarity_id = Rarity.ids.sample
				UserCard.create(user_id: @user.id, card_id: rand_card_id, rarity_id: rand_rarity_id)
		end

		render json: arr_of_user_cards
		# grab return from the pick_six method on the cards controller
		# use current user to set user_id
		# weighted rarity picker
	end

	def destroy
		@user_card = UserCard.find_by(id: params[:id])
		@user_card.destroy
		render json: @user_card
	end
end
