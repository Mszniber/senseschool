class ActuImage < ActiveRecord::Base

	belongs_to :actu

	has_attached_file :image, :styles => { square: "350x350>", colonne: "250x250>" }
						


end
