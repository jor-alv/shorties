class BookingsController < ApplicationController
  before_action :set_shorty, only: %i[new create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    # @booking = Booking.new()
    user = current_user
    @booking.user = current_user
    @booking.status = 0
    @booking.shorty = @shorty
    if @booking.start_date < Date.today
      flash[:alert] = "Invalid Date"
      render :shorty
    end
    authorize @booking
    if @booking.save
      redirect_to user_path(user)
    else
      render :shorty
    end
  end

  def show; end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    @booking.confirmed!
    authorize @booking
    redirect_to user_path(@booking.shorty.user)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to root_path
  end

  private

  def set_shorty
    @shorty = Shorty.find(params[:shorty_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
