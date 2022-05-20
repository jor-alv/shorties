class ShortiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_shorty, only: %i[show edit update destroy]

  def new
    @shorty = Shorty.new
    authorize @shorty
  end

  def index
    if params[:query].present?
      @shorties = policy_scope(Shorty).search_by_name_height_price(params[:query])
    else
      @shorties = policy_scope(Shorty)
    end

    @markers = @shorties.geocoded.map do |shorty|
      if shorty.user == User.find_by(first_name: "James")
        image = "danny.png"
      elsif shorty.user == User.find_by(first_name: "Kim")
        image = "kevin.png"
      elsif shorty.user == User.find_by(first_name: "Jorge")
        image = "lionel.png"
      end
      {
        lat: shorty.latitude,
        lng: shorty.longitude,
        info_window: render_to_string(partial: "info_window", locals: { shorty: shorty }),
        image_url: helpers.asset_url(image)
      }
    end
  end

  def show
    @booking = Booking.new
    if @shorty.user == User.find_by(first_name: "Danny")
      image = "danny.png"
    elsif @shorty.user == User.find_by(first_name: "Kevin") || User.find_by(first_name: "Paul") || User.find_by(first_name: "James")
      image = "kevin.png"
    elsif @shorty.user == User.find_by(first_name: "Lionel")
      image = "lionel.png"
    elsif @shorty.user == User.find_by(first_name: "Yann")
      image = "yann.png"
    end
    @markers = [{
      lat: @shorty.latitude,
      lng: @shorty.longitude,
      info_window: render_to_string(partial: "info_window", locals: { shorty: @shorty }),
      image_url: helpers.asset_url(image)
    }]
  end

  def create
    @shorty = Shorty.new(shorty_params)
    @shorty.user = current_user
    authorize @shorty
    if @shorty.save
      redirect_to shorty_path(@shorty), notice: 'Listing was successfully created.'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @shorty.update(shorty_params)
      redirect_to @shorty, notice: 'Information was successfully updated.'
    end
  end

  def destroy
    @shorty.destroy
    redirect_to user_path(current_user), notice: 'Listing was successfully deleted.'
  end

  private

  def set_shorty
    @shorty = Shorty.find(params[:id])
    authorize @shorty
  end

  def shorty_params
    params.require(:shorty).permit(:height,
                                   :name,
                                   :price,
                                   :description,
                                   :features,
                                   :address,
                                   :latitude,
                                   :longitude,
                                   :user_id,
                                   :photo_url,
                                   photos: [])
  end
end
