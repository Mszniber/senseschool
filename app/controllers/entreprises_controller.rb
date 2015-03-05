class EntreprisesController < ApplicationController

	before_filter :authenticate_user!, :except => [:index]

  def new
  	@entreprise = Entreprise.new
    @actu = Actu.last
  end

  def create
  	@entreprise = Entreprise.new(params[:entreprise].permit(:sort, :lien, :image))
  	if @entreprise.save
      redirect_to entreprises_path
    else 
      render 'new'
    end
  end

  def index
  	@entreprises = Entreprise.all
    @actu = Actu.last
  end

  def edit
  	@entreprise = Entreprise.find(params[:id])
    @actu = Actu.last
  end

  def update
  	@entreprise = Entreprise.find(params[:id])
  	if @entreprise.update(params[:entreprise].permit(:sort, :lien, :image))
  		redirect_to entreprises_path
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@entreprise = Entreprise.find(params[:id])
  	@entreprise.destroy

  	redirect_to entreprises_path
  end
end
