class UsersController < ApplicationController

    def create
        user = User.create(user_params)
        if user.valid?
            render json: {sucess: "Thank you for you submission!"}
        end 
    end

    def index
        users = User.all
        render json: users   
    end

    private

    

    def user_params
        params.permit(:firstName, :lastName, :email, :zip, :state)
    end

end
