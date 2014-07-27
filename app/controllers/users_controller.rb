class UsersController < ApplicationController
	before_action :set_user, only: :show
	respond_to :json

	def index
		@users = User.all
		respond_with @users
	end

	def show
		respond_with @user
	end

    #def create
        #@user = User.new(user_params)
        #@user.save
        #respond_with @user
    #end

	private
	def set_user
		@user = User.find(params[:id])
	end

    #def user_params
        #params.require(:user).permit!
    #end
end
