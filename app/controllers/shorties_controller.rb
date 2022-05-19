class ShortiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_shorty, only: %i[show edit update destroy]

  def new
    @shorty = Shorty.new
    authorize @shorty
  end

  def index
    if params[:query].present?
      # sql_query = " \
      #   shorties.name @@ :query \
      #   OR shorties.height @@ :query \
      #   OR shorties.price @@ :query \
      # "
      # @shorties = Shorty.where(sql_query, query: "%#{params[:query]}%")
      @shorties = policy_scope(Shorty).search_by_name_height_price(params[:query])
    else
      @shorties = policy_scope(Shorty)
    end
    # @shorties = policy_scope(Shorty)
  end

  def show
    @booking = Booking.new
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
                                   :user_id)
  end
end
