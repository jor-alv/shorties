class BookingsController < ApplicationController
  before_action :set_shorty, only: %i[new show create]

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.shorty = @shorty
    if @booking.save
      redirect_to shorty_path(@shorty)
    else
      render :new
    end
  end

  def show; end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to root_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to root_path
  end

  private

  def set_shorty
    @shorty = Shorty.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date, :user_id, :shorty_id)
  end
end
