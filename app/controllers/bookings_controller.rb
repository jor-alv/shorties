class BookingsController < ApplicationController
  before_action :find_shortys, only: [ :new, :create ]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.shorty = @shorty
    if @booking.save
      redirect_to shorties_path(@shorty)
    else
      render :new
    end
  end

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

  def find_shortys
    @shorty = Shorty.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:status)
  end
end
