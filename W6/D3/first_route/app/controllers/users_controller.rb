# class UsersController < ApplicationController < ActionController::Base
class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def create
        user = User.new(
            params.require(:users).permit(:name, :email)
        )
        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user
        else
            render json: { error: "there is no user with that ID #{params[:id]}"}, status: 404
        end
    end




end
