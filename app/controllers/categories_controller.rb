class CategoriesController < ApplicationController
	before_filter :authenticate_user!

	def new
		@categorie = Categorie.new
		@actu = Actu.last
	end

	def create
		@categorie = Categorie.new(params[:categorie].permit(:nom))
		@categorie.save
		redirect_to categories_path
	end

	def index
		@categories = Categorie.all
		@actu = Actu.last
	end

	def destroy
		@categorie = Categorie.find(params[:id])
		@categorie.destroy

		redirect_to categories_path
	end

end

