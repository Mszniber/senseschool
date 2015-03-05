class TemoinsController < ApplicationController

	before_filter :authenticate_user!
  def new
		@temoin = Temoin.new
		@actu = Actu.last
   end

	def create
		@temoin = Temoin.new(params[:temoin].permit(:nom, :phrase, :rang, :image, :imagecole))
		if @temoin.save
			redirect_to presentation_path
		else
			render 'new'
		end
	end

  def index
  @temoins = Temoin.all
  end

  def edit
  	@temoin = Temoin.find(params[:id])
  	@actu = Actu.last
  end


  def update
  	@temoin = Temoin.find(params[:id])

  	if @temoin.update(params[:temoin].permit(:nom, :phrase, :rang, :image, :imagecole))
			redirect_to presentation_path
		else
			render 'edit'
		end
  end


  def destroy
		@temoin = Temoin.find(params[:id])
		@temoin.destroy

		redirect_to presentation_path
	end
end
