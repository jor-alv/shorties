class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]

  def show
    @my_client_bookings = Booking.where(user: current_user)
    @my_owner_bookings = current_user.owner_bookings
    @pending_requests = @my_owner_bookings.where(status:"pending")
    @confirmed_requests = @my_owner_bookings.where(status:"confirmed")

    # @pending_requests = @user.has_pending_request?(@user, current_user, @my_client_bookings)
    # @confirmed_requests = @user.has_confirmed_request?(@user, current_user, @my_client_bookings)
  end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'User information was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
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
