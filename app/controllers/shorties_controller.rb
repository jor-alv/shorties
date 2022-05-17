class ShortiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_shorty, only: %i[show edit update destroy]

  def new
    @shorty = Shorty.new
    authorize @shorty
  end

  def index
    @shorties = policy_scope(Shorty)
  end

  def show; end

  def create
    @shorty = Shorty.new(shorty_params)
    @shorty.user = current_user
    authorize @shorty
    if @shorty.save
      redirect_to @shorty, notice: 'Listing was successfully created.'
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
    redirect_to shorty_path, notice: 'Listing was successfully deleted.'
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
