class UserCardsController < ApplicationController

    def index
        @usercards = UserCard.all
        render json: @usercards, status: :ok
    end
end
