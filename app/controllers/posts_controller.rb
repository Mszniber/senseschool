class PostsController < ApplicationController
 		layout :resolve_layout

 		before_filter :authenticate_user!, :except => [:show, :index, :index_term, :index_cours]

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		
		if @post.save
			flash[:notice] = "Successfully created project."
			redirect_to @post
		else 
			render 'new'
		end
	end

	def show
		@post = Post.find(params[:id])
		@actu = Actu.last
	end

	def index
		@posts = Post.order(id: :desc).all
		@actu = Actu.last
	end

	def index_term
		@posts = Post.order(id: :desc).all
		@actu = Actu.last
	end

	def index_cours
		@posts = Post.order(id: :desc).all
		@actu = Actu.last
	end

	def edit
		@post = Post.find(params[:id])
	end


	def update
		@post = Post.find(params[:id])
		if @post.update(post_params)
			redirect_to post_path(@post)
		else
			render 'edit'
		end
	end

	



	def destroy
		@post = Post.find(params[:id])
		@post.destroy

		redirect_to posts_path
	end


	def resolve_layout
		case action_name
		when "show"
			"post_show"
		when "index"
			"post_index"
		when "edit","new"
			"post_edit"
		when "index_term", "index_cours"
			"post_index_2"
		else
			"application"
		end
	end



	private 
	
	def post_params
		params.require(:post).permit(:title, :image, :calendar, :defi, :mission, :competences, :gain, :lieny, :liendb, :link, :entrepreneur_id,
									 :date_debut, :date_fin, :dfins, :categorie_id, :liengf, :open, :term, vidposts_attributes: [:link, :post_id, :id, :_destroy],
									 partenaires_attributes: [:description, :youvim, :link, :image, :post_id, :id, :_destroy])
	end

end
