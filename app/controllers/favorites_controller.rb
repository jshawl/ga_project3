class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def index
   @favorites = current_user.favorites
  #  @favorites = Favorite.all
  end

  def show
    @favorite = Favorite.find(params[:id])
  end

  def create
  @favorite = current_user.favorites.new(favorite_params)
  # @favorite = current_user.favorites.create(favorite_params)
    if @favorite.save
      # redirect_to(favorites_path)
      # redirect_to root_url
      respond_to  do |format|
        format.html { redirect_to(:back) }
      end
      # return Redirect(ControllerContext.HttpContext.Request.UrlReferrer.ToString());
      # ^^ was this trying to remember the save even if the user is not logged in?
      # What didn't work?
      # Also, try using branches instead to maintain experimental code instead of commenting.
    else
      render 'new'
    end
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
    params.require(:favorite).permit(:name, :url, :rating, :reviews, :address, :phone)
  end

end
