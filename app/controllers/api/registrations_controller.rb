class Api::RegistrationsController < ApplicationController
	skip_before_action :authenticate_user_from_token!

  def create
    @user = User.new(user_params)
    if @user.save
      respond_with @user
    else
      invalid_signup
    end
  end

	private

	def invalid_signup
    warden.custom_failure!
    render json: { error: @user.errors }, status: :unprocessable_entity
  end

	def user_params
		params.permit(:email, :password)
	end
end
