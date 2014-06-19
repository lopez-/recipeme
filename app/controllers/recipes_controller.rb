class RecipesController < ApplicationController
	def new
	end

	def create
		@recipe = Recipe.new(recipe_params)

		@recipe.save
		redirect_to @recipe
	end

	def show
		@recipe = Recipe.find(params[:id])
	end

	def index
		@recipes = Recipe.all
	end

	private

		def recipe_params
			params.require(:recipe).permit(:title, :ingredients, :preparation)
		end
end
