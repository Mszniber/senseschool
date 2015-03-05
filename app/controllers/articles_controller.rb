class ArticlesController < ApplicationController

  before_filter :authenticate_user!, :except => [:index]

  
  def index
    @articles = Article.order(dateparu: :desc).all
    @actu = Actu.last
  end

  def new
     @article = Article.new
     @actu = Actu.last
  end

  def create
    @article = Article.new(params[:article].permit(:lien, :dateparu, :texte, :image))
    if @article.save
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
    @actu = Actu.last
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(params[:article].permit(:lien, :dateparu, :texte, :image))
      redirect_to articles_path
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end
end
