class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]

  def show
    @my_client_bookings = Booking.where(user: current_user)
  end

  def edit; end

  def update
    if @user.update(restaurant_params)
      redirect_to @user, notice: 'User information was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to root, notice: 'User was successfully deleted.'
  end

  private

  def set_user
    @user = User.find(params[:id])
    authorize @user
  end

  def user_params
    params.require(:user).permit(:email,
                                 :first_name,
                                 :last_name)
  end
end
