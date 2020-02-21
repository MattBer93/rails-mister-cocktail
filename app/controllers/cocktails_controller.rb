class CocktailsController < ApplicationController
  # before_action :set_cocktail, only: [:show, :create,]
  # Don't I need to specify which routes/methods to have?

  def index
    @cocktails = Cocktail.all
  end

  def show
    @ingredients = @cocktail.ingredients
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

      if @cocktail.save
        redirect_to cocktail_path(@cocktail)
        # format.html { redirect_to @cocktail, notice: 'Cocktail was successfully created'}
        #do I need here a format.json?
      else
        render 'new'
        #same: do I need a format.jason?
      end
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :image)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
