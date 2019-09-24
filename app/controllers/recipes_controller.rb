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
    Recipe.create(recipe_params)
  end

  def recipe_params
    params.require(:recipe).permit(
      :title,
      ingredients_attributes: [
        :name,
        :quantity
      ]
    )
  end
end
