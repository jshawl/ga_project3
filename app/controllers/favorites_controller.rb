class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def index
   @favorites = Favorite.all
  end

  def show
    @favorite = Favorite.find(params[:id])
  end

  def create

    # @favorite = Favorite.create(favorite_params)

    @favorite = Favorite.create(favorite_params)
    #render json: @favorite
     redirect_to(favorites_url)
  end

  def edit
    @favorite = Favorite.find(params[:id])
  end

  def update
    @favorite = Favorite.find(params[:id])
    if @favorite.update (favorite_params)
      redirect_to @favorite
    else
      render :edit
    end
  end


  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    #redirect_to ("/users/show")
  end

  private

  def favorite_params
    params.require(:favorite).permit(:name)
  end

end
