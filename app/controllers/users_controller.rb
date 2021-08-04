class UsersController < ApplicationController

    skip_before_action :authenticate, only: [:create, :login]

    def index
        @users = User.all
        render json: @users
    end

    def profile
        render json: @user
    end

    # def show
    #     @user = User.find(params[:id])
    #     render json: @user
    # end

    def create
        @user = User.create(user_params)
        render json: @user, status: :created
    end

    def login
        @user = User.find_by username: params[:user][:username]

        if @user && @user.authenticate(params[:user][:password])
            payload = { user_id: @user.id }
            secret = 'areallygoodsecret!'
            @token = JWT.encode payload, secret
            render json: { token: @token }, status: :ok  
        else
            render json: {error: 'Invalid username or password'}, status: :unauthorized
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :email)
    end
    
end