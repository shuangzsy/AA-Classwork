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

    def update
        user = User.find_by(id: params[:id])

        if user.update(user_params)
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        user = User.find(params[:id])
        
        if user.destroy
            redirect_to users_url
        else
            render json: { error: "there is no user with that ID #{params[:id]}"}, status: 404
        end

    end


    private

    def user_params
        params.require(:users).permit(:name, :email)
    end

end
