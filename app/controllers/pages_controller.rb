class PagesController < ApplicationController
	layout "pres"
	def pres
		@temoins = Temoin.order(id: :desc).all
		@actu = Actu.last
	end

	def equipe
		@actu = Actu.last
	end

	def contact
		@actu = Actu.last
	end
end
