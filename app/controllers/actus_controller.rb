class ActusController < ApplicationController
  before_action :set_actu, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:index]

  # GET /actus
  # GET /actus.json
  def index
    @actus = Actu.all
  end

  # GET /actus/1
  # GET /actus/1.json
  def show
  end

  # GET /actus/new
  def new
    @actu = Actu.new
  end

  # GET /actus/1/edit
  def edit
  end

  # POST /actus
  # POST /actus.json
  def create
    @actu = Actu.new(actu_params)

    respond_to do |format|
      if @actu.save
        format.html { redirect_to actus_path, notice: 'Actu was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /actus/1
  # PATCH/PUT /actus/1.json
  def update
      if @actu.update(actu_params)
        redirect_to actus_path, notice: 'Actu was successfully updated.'
      else
       render 'edit'
      end
    
  end

  # DELETE /actus/1
  # DELETE /actus/1.json
  def destroy
    @actu.destroy
    respond_to do |format|
      format.html { redirect_to actus_path }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actu
      @actu = Actu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actu_params
      params.require(:actu).permit(:titre, :texte,
                   liens_attributes: [:link, :actu_id, :id, :_destroy],
                   actu_images_attributes: [:image,  :actu_id, :id, :_destroy],
                   videos_attributes: [:link,  :actu_id, :youvim, :id, :_destroy])
    end
end
