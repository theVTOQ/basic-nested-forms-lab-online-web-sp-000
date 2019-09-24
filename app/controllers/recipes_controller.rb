class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
    #@recipe.ingredients.build
    #@recipe.ingredients.build
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create

  end

  def recipe_params
    params.require(:recipe).permit(
      :title,
      ingredient_attributes: [
        :name,
        :quantity
      ]
    )
  end
end
