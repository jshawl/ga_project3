class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def index
   @favorites = Favorite.all
  end

  def show
    @favorite = Favorite.find(params[:id])
  end

  def create
    # NEED TO MAKE THE CREATE SAVE FOR THE CURRENT USER
    @favorite = Favorite.create(favorite_params)
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
    redirect_to ("/favorites")
  end

  private

  def favorite_params
    params.require(:favorite).permit(:name)
  end

end
