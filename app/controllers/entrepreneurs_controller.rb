class EntrepreneursController < ApplicationController
	before_filter :authenticate_user!

	
	def new
		@entrepreneur = Entrepreneur.new
		@actu = Actu.last
	end

	def create
		@entrepreneur = Entrepreneur.new(params[:entrepreneur].permit(:nom, :description, :lien, :lien2, :nbp, :tag_list,
																vidents_attributes: [:link, :youvim, :entrepreneur_id, :id, :_destroy], 
																ent_images_attributes: [:image, :entrepreneur_id, :id, :_destroy]))
		@entrepreneur.save
		redirect_to @entrepreneur
	end

	def show
		@entrepreneur = Entrepreneur.find(params[:id])
		@actu = Actu.last
	end

	def index
		@entrepreneurs = Entrepreneur.all
		@actu = Actu.last
	end

	def edit
		@entrepreneur = Entrepreneur.find(params[:id])
		@actu = Actu.last
	end

	def update
		@entrepreneur = Entrepreneur.find(params[:id])
		@entrepreneur.update(params[:entrepreneur].permit(:nom, :description, :lien, :lien2, :nbp, :tag_list,
														vidents_attributes: [:link, :youvim, :entrepreneur_id, :id, :_destroy], 
														ent_images_attributes: [:image, :entrepreneur_id, :id, :_destroy]))
		redirect_to @entrepreneur
	end

	def destroy
		@entrepreneur = Entrepreneur.find(params[:id])
		@entrepreneur.destroy

		redirect_to entrepreneurs_path
	end

end
